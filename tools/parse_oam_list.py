from argparse import ArgumentParser
import functools
import itertools
import struct
import warnings

import decomp

SIZE_TABLE = {
    ("ATTR0_SQUARE", 0): "SPRITE_SIZE_8x8",
    ("ATTR0_SQUARE", 1): "SPRITE_SIZE_16x16",
    ("ATTR0_SQUARE", 2): "SPRITE_SIZE_32x32",
    ("ATTR0_SQUARE", 3): "SPRITE_SIZE_64x64",
    ("ATTR0_WIDE", 0): "SPRITE_SIZE_16x8",
    ("ATTR0_WIDE", 1): "SPRITE_SIZE_32x8",
    ("ATTR0_WIDE", 2): "SPRITE_SIZE_32x16",
    ("ATTR0_WIDE", 3): "SPRITE_SIZE_64x32",
    ("ATTR0_TALL", 0): "SPRITE_SIZE_8x16",
    ("ATTR0_TALL", 1): "SPRITE_SIZE_8x32",
    ("ATTR0_TALL", 2): "SPRITE_SIZE_16x32",
    ("ATTR0_TALL", 3): "SPRITE_SIZE_32x64",
}


def enumerate_by_address(data: bytes, size: int = 1, start_address: int = 0):
    return zip(itertools.count(start_address, size), map(bytes, itertools.batched(data, size)))


def parse_frame_data(rom_file: bytes, start_address: int, stop_address: int) -> list[list[tuple[int, int]]]:
    current = []
    result = []
    for addr, bytestring in enumerate_by_address(
        rom_file[start_address:stop_address], struct.calcsize("<II"), start_address
    ):
        frame_ptr, timer = struct.unpack("<II", bytestring)
        current.append((frame_ptr, timer))
        if frame_ptr == 0:
            result.append(current)
            current = []
    if current != []:
        warnings.warn("Unterminated frame data list")
        result.append(current)
    return result


def parse_and_print_frames(rom_file: bytes, start_address: int, stop_address: int):
    remaining = 0
    for addr, bytepair in enumerate_by_address(rom_file[start_address:stop_address], 2, start_address):
        short = int.from_bytes(bytepair, "little")
        if remaining == 0:
            remaining = 3 * short
            print(f"const u16 sOamFrame_{addr | decomp.ROM.start:X}[] = {{")
            print(f"    {short},")
            # print(format(addr | GBA_ROM_START, "X"), file=sys.stderr)
        else:
            if remaining % 3 == 0:
                y = short & 0xFF
                if y & 0x80:
                    y -= 0x100
                if short & 0xC000 == 0:
                    shape = "ATTR0_SQUARE"
                elif short & 0xC000 == 0x4000:
                    shape = "ATTR0_WIDE"
                elif short & 0xC000 == 0x8000:
                    shape = "ATTR0_TALL"
                else:
                    raise ValueError("Invalid shape 3")
                if short & 0x300:
                    raise NotImplementedError("Non-regular sprite")
                if short & 0xC00:
                    raise NotImplementedError("Gfx mode")
                if short & 0x1000:
                    raise NotImplementedError("Mosaic")
                if short & 0x300:
                    raise NotImplementedError("Non-regular sprite")
            elif remaining % 3 == 2:
                x = short & 0x1FF
                if x & 0x100:
                    x -= 0x200
                dimensions = SIZE_TABLE[(shape, (short & 0xC000) >> 14)]
                flip = []
                if short & 0x1000:
                    flip.append("ST_OAM_HFLIP")
                if short & 0x2000:
                    flip.append("ST_OAM_VFLIP")
            elif remaining % 3 == 1:
                tid = short & 0x3FF
                prio = (short & 0x0C00) >> 10
                palette = (short & 0xF000) >> 12
            remaining -= 1
            if remaining % 3 == 0:
                print(f"    OAM_ENTRY({x}, {y}, {shape}, {dimensions}, {flip or 0}, {tid}, {palette}, {prio}),")
            if remaining == 0:
                print("};")


def print_frame_data(frame_data: list[list[tuple[int, int]]], start_address: int):
    address = start_address
    for frame_list in frame_data:
        print(f"const AnimationFrame sOam_{address | decomp.ROM.start:X}[] = {{")
        for frame in frame_list:
            address += struct.calcsize("<II")
            if frame[0] == 0:
                print("    ANIMATION_TERMINATOR")
            else:
                print(f"    {{ sOamFrame_{frame[0] | decomp.ROM.start:X}, {frame[1]} }},")
        print("};")


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("rom_file", help="ROM to read from.")
    parser.add_argument("start", type=functools.partial(int, base=0), help="Address of the first frame.")
    parser.add_argument("stop", type=functools.partial(int, base=0), help="Address just after the last frame.")
    args = parser.parse_args()

    with open(args.rom_file, "rb") as stream:
        rom_bytes = stream.read()
    frame_data = parse_frame_data(rom_bytes, args.start, args.stop)
    min_address = min(fd[0] for fd in itertools.chain.from_iterable(frame_data) if fd[0] != 0)
    parse_and_print_frames(rom_bytes, min_address & (decomp.ROM.start - 1), args.start)
    print()
    print_frame_data(frame_data, args.start)
