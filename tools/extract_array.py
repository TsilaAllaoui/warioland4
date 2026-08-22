#!/usr/bin/env python3

import argparse
from enum import StrEnum
import itertools

import decomp


class OutputFormat(StrEnum):
    DECIMAL = "decimal"
    SIGNED = "signed"
    HEX = "hex"
    SYMBOlS = "symbols"


def generate_limits(bits: int):
    return {
        -(1 << (bits - 1)): f"S{bits}_MIN",
        (1 << (bits - 1)) - 1: f"S{bits}_MAX",
        (1 << bits) - 1: f"U{bits}_MAX",
    }


LIMITS = {
    **generate_limits(8),
    **generate_limits(16),
    **generate_limits(32),
}


def extract_data(
    version: str,
    address: int,
    count: int,
    unit_size: int = 1,
    format: OutputFormat = OutputFormat.HEX,
    *,
    suppress_limits: bool = False,
    symbols: dict[int, str] | None = None,
):
    if symbols is None:
        symbols = {}

    with open(f"baserom_{version}.gba", "rb") as stream:
        rom = stream.read()

    size = count * unit_size
    data_bytes = rom[address : address + size]

    for batch in itertools.batched(data_bytes, unit_size):
        unit = int.from_bytes(batch, "little", signed=format == OutputFormat.SIGNED)
        formatted: str
        if format == OutputFormat.SYMBOlS:
            formatted = decomp.get_symbol(unit, symbols, ctx="data")
        elif not suppress_limits and unit in LIMITS:
            formatted = LIMITS[unit]
        elif format == OutputFormat.HEX:
            formatted = f"0x{unit:x}"
        else:
            formatted = str(unit)
        print(formatted, end=", ")


def parse_int(s: str) -> int:
    return int(s, base=0)


def parse_address(s: str) -> int:
    return parse_int(s) & ~0x8000000


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    version = parser.add_mutually_exclusive_group()
    version.add_argument(
        "-v", "--version", type=str, choices=["us", "jp"], default="us", help="The version of the ROM to extract from"
    )
    # version.add_argument("-d", "--debug", action="store_true", help="Extract debug data from the US beta rom")
    parser.add_argument("address", type=parse_address, help="Address to extract from")
    end = parser.add_mutually_exclusive_group(required=True)
    end.add_argument("-e", "--end", type=parse_address, help="End address, exclusive")
    end.add_argument("-c", "--count", type=parse_int, help="Number of units to extract")
    end.add_argument("-l", "--length", type=parse_int, help="Number of bytes to extract")
    parser.add_argument("-s", "--size", type=parse_int, default=1, help="Size of each unit in bytes")
    parser.add_argument(
        "-f",
        "--format",
        type=OutputFormat,
        choices=OutputFormat,
        default=OutputFormat.HEX,
        help="Format for returned units",
    )
    parser.add_argument(
        "--suppress-limits",
        action="store_true",
        help="Display values such as U8_MAX as integers, rather than symbolic constants",
    )

    args = parser.parse_args()
    if not args.version and not args.debug:
        args.version = "us"

    if args.format == OutputFormat.SYMBOlS:
        args.size = 4

    length: int | None
    length = args.length
    if args.end is not None:
        length = args.end - args.address
    count: int
    if args.count is None:
        assert length is not None
        count = length // args.size
    else:
        count = args.count

    try:
        symbols = decomp.parse_map(f"build/{args.version}/warioland4_{args.version}.map")
    except FileNotFoundError:
        symbols = None

    extract_data(
        args.version,
        args.address,
        count,
        args.size,
        args.format,
        suppress_limits=args.suppress_limits,
        symbols=symbols,
    )
