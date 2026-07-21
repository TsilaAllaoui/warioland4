#include "sprite_ai/catbat.h"
#include "sprite.h"
#include "sprite_util.h"
#include "background_registers.h"
#include "fixed_point.h"
#include "global_data.h"
#include "gba/m4a.h"
#include "gba/macro.h"
#include "main.h"
#include "score.h"
#include "sound.h"
#include "voice_set.h"
#include "wario.h"

extern const struct AnimationFrame sUnk_83CBE54[];
extern const struct AnimationFrame sCatbatOam_83CD334[];
extern const struct AnimationFrame sCatbatOam_83CD35C[];
extern const struct AnimationFrame sCatbatOam_83CD374[];
extern const struct AnimationFrame sCatbatOam_83CD39C[];
extern const struct AnimationFrame sCatbatOam_83CD3EC[];
extern const struct AnimationFrame sCatbatOam_83CE468[];
extern const struct AnimationFrame sCatbatOam_83CE490[];
extern const struct AnimationFrame sCatbatOam_83CE4A8[];
extern const struct AnimationFrame sCatbatOam_83CE4D0[];
extern const struct AnimationFrame sCatbatOam_83CE4F8[];
extern const struct AnimationFrame sCatbatOam_83CF164[];
extern const struct AnimationFrame sCatbatOam_83CF370[];
extern const struct AnimationFrame sCatbatOam_83CF3F0[];
extern const struct AnimationFrame sCatbatOam_83CF400[];
extern const struct AnimationFrame sCatbatOam_83CF478[];
extern const struct AnimationFrame sCatbatOam_83CF4B8[];
extern const struct AnimationFrame sCatbatOam_83CF594[];
extern const struct AnimationFrame sCatbatOam_83CF5BC[];
extern const struct AnimationFrame sCatbatOam_83CF5D4[];
extern const struct AnimationFrame sCatbatOam_83CF5EC[];
extern const struct AnimationFrame sCatbatOam_83CF8BC[];
extern const struct AnimationFrame sUnk_83CF8FC[];
extern const u8 sUnk_83CF920[];
extern const u8 sUnk_83CF930[];
extern const u8 sUnk_83CF968[];
extern const u8 sUnk_83CF970[];
extern const s16 sUnk_83CF980[];
extern const s16 sUnk_83CF9EA[];
extern const s16 sUnk_83CFA0A[];
extern const s16 sUnk_83CFA7C[];
extern const s16 sUnk_83CFACE[];
extern const void *const sUnk_878F0E4[];
extern const void *const sUnk_878F0F8[];

void SpawnPrimarySpriteWithStatus(u8, u8, u8, u32, u32, u32);
void UpdateBossHealthGauge(void);
void LoadBossSpriteGraphics(u8, u8, u8);
void DespawnActiveCatbatProjectile(void)
{
    register u8 *cursor asm("r2");
    register u8 *end asm("r5");
    register int offset asm("r0");
    register int one asm("r4");
    register int zero asm("r3");

    cursor = (u8 *)gSpriteData;
    offset = 0xFD;
    offset <<= 2;
    end = cursor + offset;
    one = 1;
    zero = 0;
    do {
        register u16 status asm("r1");
        register int active asm("r0");

        if (((struct PrimarySpriteData *)cursor)->globalID == PSPRITE_CATBAT_PROJECTILE) {
            status = ((struct PrimarySpriteData *)cursor)->status;
            active = one;
            active &= status;
            if (active != 0) {
                ((struct PrimarySpriteData *)cursor)->status = zero;
                break;
            }
        }
        cursor += sizeof(struct PrimarySpriteData);
    } while ((s32)cursor <= (s32)end);
}
int UpdateCatbatGraphicsAnimation(const u8 *table)
{
    register const u8 *sequence asm("r2");
    register int wrapped asm("r6");
    register struct PrimarySpriteData *sprite asm("r1");
    register u8 *delay asm("r5");
    register u8 *indexPtr asm("r4");
    register unsigned value asm("r0");
    register unsigned index asm("r1");
    register unsigned frame asm("r3");
    register unsigned offset asm("r0");
    register volatile u32 *dma asm("r1");
    register const u8 *tableBase asm("r2");
    register const u8 *src asm("r2");
    register u32 control asm("r3");

    sequence = table;
    if (gCuckooCondorHasCapturedWario != 0)
        sequence = sUnk_83CF920;

    wrapped = FALSE;
    sprite = &gCurrentSprite;
    delay = &sprite->work1;
    value = *delay;
    if (value != 0) {
        value--;
        *delay = value;
        return FALSE;
    }

    indexPtr = &sprite->work0;
    value = *indexPtr;
    index = value + 1;
    *indexPtr = index;
    value <<= 24;
    index = value >> 24;
    frame = sequence[index * 4];
    if (frame == 0xFF) {
        index = 0;
        value = 1;
        *indexPtr = value;
        frame = sequence[0];
        wrapped = TRUE;
    }
    offset = index << 2;
    *delay = sequence[offset + 1];

    dma = (vu32 *)0x040000D4;
    tableBase = (const u8 *)sUnk_878F0E4;
    offset = frame << 2;
    /* agbcc canonicalizes the commutative address add with the operands reversed. */
    asm("add r0, r0, r2" : "+r"(offset) : "r"(tableBase));
    src = *(const u8 **)offset;
    dma[0] = (u32)src;
    dma[1] = 0x06015820;
    control = 0x80000070;
    dma[2] = control;
    (void)dma[2];
    src += 0xE0;
    dma[0] = (u32)src;
    dma[1] = 0x06015C20;
    dma[2] = control;
    (void)dma[2];
    return wrapped;
}
void UpdateCatbatBackgroundAnimation(const u8 *sequence)
{
    register const u8 *table asm("r2");
    register u8 *delay asm("r5");
    register u8 *indexPtr asm("r4");
    register unsigned value asm("r0");
    register unsigned index asm("r1");
    register unsigned frame asm("r3");
    register unsigned offset asm("r0");
    register volatile u32 *dma asm("r1");
    register const u8 *tableBase asm("r2");
    register const u8 *src asm("r0");

    table = sequence;
    delay = &gBgAnimationTimer;
    value = *delay;
    if (value != 0) {
        value--;
        *delay = value;
        return;
    }

    indexPtr = &gBgAnimationFrame;
    value = *indexPtr;
    index = value + 1;
    *indexPtr = index;
    value <<= 24;
    index = value >> 24;
    offset = index << 2;
    /* agbcc reverses this commutative sequence-address addition. */
    asm("add r0, r0, r2" : "+r"(offset) : "r"(table));
    frame = *(const u8 *)offset;
    if (frame == 0xFF) {
        index = 0;
        value = 1;
        *indexPtr = value;
        frame = table[0];
    }
    offset = index << 2;
    *delay = table[offset + 1];

    dma = (vu32 *)0x040000D4;
    tableBase = (const u8 *)sUnk_878F0F8;
    offset = frame << 2;
    /* agbcc reverses this commutative table-address addition. */
    asm("add r0, r0, r2" : "+r"(offset) : "r"(tableBase));
    src = *(const u8 **)offset;
    dma[0] = (u32)src;
    dma[1] = 0x06014000;
    dma[2] = 0x80000200;
    (void)dma[2];
}
void InitCatbatMineSpawner(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int mask asm("r2");
    register int zeroByte asm("r3");
    register int zeroHalf asm("r4");
    register u8 *distance asm("r0");
    register int sixteen asm("r2");
    register u8 *hitbox asm("r1");
    register const struct AnimationFrame *oam asm("r0");
    register struct PrimarySpriteData *base asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    mask = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    status = mask;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    base = sprite;
    base->status = status;
    base->warioCollision = 65;

    distance = &sprite->drawDistanceDown;
    sixteen = 16;
    *distance = sixteen;
    distance++;
    *distance = sixteen;
    distance++;
    asm("" : "+r"(distance));
    *distance = sixteen;

    hitbox = &base->hitboxExtentUp;
    *hitbox = 48;
    hitbox++;
    *hitbox = 80;
    hitbox++;
    *hitbox = 32;
    hitbox++;
    asm("" : "+r"(hitbox));
    *hitbox = 32;

    oam = sCatbatOam_83CF478;
    asm("" : "+r"(oam));
    base = sprite;
    base->pOamData = oam;
    base->currentAnimationFrame = zeroByte;
    base->animationTimer = zeroHalf;
    base->pose = sixteen;
    SpriteUtilFindSpriteSlotWork3(81);
}
void UpdateCatbatMineSpawnerPosition(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register struct PrimarySpriteData *sprites asm("r2");
    register int slot asm("r1");
    register int value asm("r0");
    register u16 status asm("r1");

    sprite = &gCurrentSprite;
    slot = sprite->work3;
    sprites = gSpriteData;
    if (sprites[slot].status & SPRITE_STATUS_FACING_RIGHT) {
        status = sprite->status;
        value = SPRITE_STATUS_FACING_RIGHT;
        value |= status;
    } else {
        status = sprite->status;
        value = status & ~SPRITE_STATUS_FACING_RIGHT;
    }
    sprite->status = value;

    status = *(volatile u16 *)&sprite->status;
    value = SPRITE_STATUS_FACING_RIGHT;
    value &= status;
    if (value != 0) {
        slot = sprite->work3;
        value = sprites[slot].xPosition + 16;
    } else {
        slot = sprite->work3;
        value = sprites[slot].xPosition - 16;
    }
    *(volatile u16 *)&sprite->xPosition = value;

    {
        register u8 *slotPtr asm("r0");
        /* Materialize the sprite base only after the volatile X-position store. */
        asm("" : "=r"(slotPtr) : "0"(sprite));
        slotPtr += 42;
        slot = *slotPtr;
        value = sprites[slot].yPosition - 216;
        sprite->yPosition = value;
    }
}
void UpdateCatbatHitboxFacing(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u16 status asm("r1");
    register u8 *extent asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    status = sprite->status;
    value = SPRITE_STATUS_FACING_RIGHT;
    if (value & status) {
        extent = &sprite->hitboxExtentLeft;
        value = 48;
        *extent = value;
        extent++;
        value = 80;
    } else {
        extent = &sprite->hitboxExtentLeft;
        value = 80;
        *extent = value;
        extent++;
        value = 48;
    }
    *extent = value;
}
void InitCatbat(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *ptr asm("r1");

    gBossTookDamage = 0;
    gCuckooCondorPendulumLength = 0;
    gCuckooCondorMoveRight = 0;
    gCuckooCondorHasCapturedWario = 0;
    gInitialHealth = 12;
    gPaletteFlashTimer = 0;
    gBgAnimationFrame = 0;
    gBgAnimationTimer = 0;
    gUnk_3000A60 = 0;

    sprite = &gCurrentSprite;
    {
        register int priority asm("r0");
        register int priorityMask asm("r1");

        priority = sprite->drawPriority;
        priorityMask = 128;
        priority |= priorityMask;
        zeroHalf = 0;
        sprite->drawPriority = priority;
    }
    {
        register u16 oldStatus asm("r1");
        register u16 status asm("r0");
        register int background asm("r1");

        oldStatus = sprite->status;
        status = oldStatus & ~SPRITE_STATUS_HIDDEN;
        zeroByte = 0;
        background = SPRITE_STATUS_BACKGROUND;
        status |= background;
        sprite->status = status;
    }
    ptr = &sprite->drawDistanceDown;
    *ptr = 80;
    ptr++;
    *ptr = 80;
    ptr++;
    *ptr = 80;
    ptr++;
    *ptr = 128;
    ptr++;
    /* Keep the last extent pointer increment explicit. */
    asm("" : "+r"(ptr));
    *ptr = 124;
    sprite->warioCollision = 64;
    sprite->health = 12;
    sprite->pose = 1;
    sprite->pOamData = sCatbatOam_83CE468;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    sprite->work3 = zeroByte;
    sprite->work0 = zeroByte;
    sprite->work1 = zeroByte;
    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
    SpriteUtilTurnTowardWario();
    UpdateCatbatHitboxFacing();
    UpdateBossHealthGauge();
    sprite->work2 = 60;
    LoadBossSpriteGraphics(131, 8, 4);
    func_801E430(224, 0, 0, sprite->yPosition + 352, sprite->xPosition + 128);
    func_801E430(251, 0, 0, sprite->yPosition - 216, sprite->xPosition - 16);
    sprite->yPosition += 64;
}
void UpdateCatbatIntroWaitForShop(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *indexPtr asm("r12");
    register int index asm("r2");
    register const s16 *table asm("r5");
    register int entryAddress asm("r0");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r4");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register int nextIndex asm("r0");
    register u8 *storePtr asm("r1");
    register u8 *timer asm("r2");
    register int timerValue asm("r0");

    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sUnk_83CF980;
    entryAddress = index << 1;
    /* agbcc reverses this commutative table-address addition. */
    asm("add r0, r0, r5" : "+r"(entryAddress) : "r"(table));
    entry = (const s16 *)entryAddress;
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)&table[0];
        index = 0;
    }
    nextIndex = index + 1;
    storePtr = indexPtr;
    *storePtr = nextIndex;
    sprite->yPosition += velocity;

    timer = &sprite->work2;
    timerValue = *timer;
    if (timerValue != 0) {
        timerValue--;
        *timer = timerValue;
        if ((timerValue << 24) != 0)
            return;
        {
            register vu8 *switchState asm("r1");
            u32 switchAddress;

            switchAddress = (u32)&gColorFadingState;
            /* Keep this branch-local store address distinct from the later read. */
            asm volatile("" : "=r"(switchState) : "0"(switchAddress) : "memory");
            *switchState = 7;
        }
    }
    {
        register vu8 *switchRead asm("r0");
        /* Reuse the store-side literal after agbcc incorrectly CSEs the address. */
        asm volatile("ldr r0, [pc, #44]" : "=r"(switchRead));
        if (*switchRead == 0 && gCurrentShopItem == 0) {
            sprite->pose = 2;
            *timer = 20;
        }
    }
}
void UpdateCatbatIntroDelay(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *indexPtr asm("r12");
    register int index asm("r3");
    register const s16 *table asm("r5");
    register int entryAddress asm("r0");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r4");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register int nextIndex asm("r0");
    register u8 *storePtr asm("r1");
    register u8 *timer asm("r1");
    register int timerValue asm("r0");
    register int normalizedTimer asm("r3");
    register int frameZero asm("r0");

    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sUnk_83CF980;
    entryAddress = index << 1;
    /* agbcc reverses this commutative table-address addition. */
    asm("add r0, r0, r5" : "+r"(entryAddress) : "r"(table));
    entry = (const s16 *)entryAddress;
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)&table[0];
        index = 0;
    }
    nextIndex = index + 1;
    storePtr = indexPtr;
    *storePtr = nextIndex;
    sprite->yPosition += velocity;
    timer = &sprite->work2;
    timerValue = *timer - 1;
    *timer = timerValue;
    normalizedTimer = (u8)timerValue;
    if (normalizedTimer == 0) {
        sprite->pose = 3;
        *timer = 96;
        sprite->pOamData = sCatbatOam_83CF164;
        frameZero = 0;
        sprite->currentAnimationFrame = frameZero;
        sprite->animationTimer = normalizedTimer;
        m4aSongNumStart(SOUND_D4);
    }
}
void UpdateCatbatIntroRoar(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *indexPtr asm("r12");
    register int index asm("r3");
    register const s16 *table asm("r5");
    register int entryAddress asm("r0");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r4");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register int nextIndex asm("r0");
    register u8 *storePtr asm("r1");
    register u8 *timer asm("r3");
    register int timerValue asm("r0");
    int normalizedTimer;
    register int frameZero asm("r0");

    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sUnk_83CF980;
    entryAddress = index << 1;
    /* agbcc reverses this commutative table-address addition. */
    asm("add r0, r0, r5" : "+r"(entryAddress) : "r"(table));
    entry = (const s16 *)entryAddress;
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)&table[0];
        index = 0;
    }
    nextIndex = index + 1;
    storePtr = indexPtr;
    *storePtr = nextIndex;
    sprite->yPosition += velocity;
    timer = &sprite->work2;
    timerValue = *timer - 1;
    *timer = timerValue;
    normalizedTimer = ((u32)timerValue << 24) >> 24;
    if (normalizedTimer == 0) {
        sprite->pose = 4;
        sprite->pOamData = sCatbatOam_83CD334;
        frameZero = 0;
        sprite->currentAnimationFrame = frameZero;
        sprite->animationTimer = normalizedTimer;
        *timer = 60;
    }
}
void UpdateCatbatIntroBossTimer(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u8 *indexPtr asm("r12");
    register int index asm("r2");
    register const s16 *table asm("r5");
    register int entryAddress asm("r0");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r4");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register int nextIndex asm("r0");
    register u8 *storePtr asm("r1");
    register u8 *timer asm("r1");
    register int timerValue asm("r0");

    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sUnk_83CF980;
    entryAddress = index << 1;
    /* agbcc reverses this commutative table-address addition. */
    asm("add r0, r0, r5" : "+r"(entryAddress) : "r"(table));
    entry = (const s16 *)entryAddress;
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)&table[0];
        index = 0;
    }
    nextIndex = index + 1;
    storePtr = indexPtr;
    *storePtr = nextIndex;
    sprite->yPosition += velocity;
    timer = &sprite->work2;
    timerValue = *timer - 1;
    *timer = timerValue;
    if ((timerValue << 24) == 0) {
        sprite->pose = 5;
        SpriteUtilStartBossTimer();
    }
}
void UpdateCatbatIntroWaitForTimer(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *indexPtr asm("r12");
    register int index asm("r2");
    register const s16 *table asm("r5");
    register int entryAddress asm("r0");
    register const s16 *entry asm("r0");
    register u16 velocity asm("r3");
    register int signedVelocity asm("r1");
    register int zero asm("r6");
    register int nextIndex asm("r0");
    register u8 *storePtr asm("r1");

    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
    sprite = &gCurrentSprite;
    indexPtr = &sprite->work3;
    index = *indexPtr;
    table = sUnk_83CF980;
    entryAddress = index << 1;
    /* agbcc reverses this commutative table-address addition. */
    asm("add r0, r0, r5" : "+r"(entryAddress) : "r"(table));
    entry = (const s16 *)entryAddress;
    velocity = *(const u16 *)entry;
    zero = 0;
    signedVelocity = *entry;
    if (signedVelocity == 0x7FFF) {
        velocity = *(const u16 *)&table[0];
        index = 0;
    }
    nextIndex = index + 1;
    storePtr = indexPtr;
    *storePtr = nextIndex;
    sprite->yPosition += velocity;
    if (gWarioPauseTimer == 0 && gTimerState == 1) {
        SpriteUtilUnsetAllSpritesHighPriority();
        gSwitchStates[2] = 2;
        sprite->work2 = 60;
        sprite->pose = 16;
    }
}
void InitCatbatPatrol(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register struct PrimarySpriteData *current asm("r2");
    register const struct AnimationFrame *animation asm("r0");
    register u8 health asm("r0");

    sprite = &gCurrentSprite;
    {
        register u8 *work asm("r2");
        register int zero asm("r0");

        work = &sprite->work3;
        zero = 0;
        *work = zero;
    }
    health = sprite->health;
    current = sprite;
    if (health <= 3)
        sprite->work2 = 60;
    else
        current->work2 = 120;
    current->pose = 16;
    if (current->health <= 1) {
        if (gUnk_3000A60 != 0)
            animation = sCatbatOam_83CE4A8;
        else
            animation = sCatbatOam_83CD374;
    } else {
        if (gUnk_3000A60 != 0)
            animation = sCatbatOam_83CE468;
        else
            animation = sCatbatOam_83CD334;
    }
    current->pOamData = animation;
    {
        register int zeroFrame asm("r0");
        register int zeroWork asm("r1");
        register u8 *work asm("r0");

        zeroFrame = 0;
        /* agbcc otherwise copies this zero into r1 before the byte store. */
        asm("strb r0, [r2, #22]");
        zeroWork = 0;
        current->animationTimer = zeroFrame;
        work = &current->work0;
        *work = zeroWork;
        work++;
        *work = zeroWork;
    }
    UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
}
void UpdateCatbatPatrol(void)
{
    register struct WarioData *wario asm("r8");
    register struct PrimarySpriteData *sprite asm("r4");
    register int oldX asm("r6");
    register int oldXLeft asm("r9");
    register int zeroHigh asm("r10");
    volatile int warioXLeft;
    volatile int warioXRight;
    register int warioPosition asm("r1");

    wario = &gWarioData;
    warioPosition = wario->xPosition;
    warioXRight = warioPosition;
    warioXLeft = warioPosition;
    sprite = &gCurrentSprite;
    oldX = sprite->xPosition;
    oldXLeft = oldX;

    UpdateCatbatGraphicsAnimation((const u8 *)sUnk_83CF8FC);
    {
        register u8 *indexPtr asm("r7");
        register u8 *storePtr asm("r12");
        register int index asm("r2");
        register int nextIndex asm("r0");
        register u8 *finalStore asm("r1");
        register const s16 *table asm("r5");
        register int entryAddress asm("r0");
        register int velocity asm("r3");
        register int zero asm("r7");
        register int signedVelocity asm("r1");

        indexPtr = (u8 *)42;
        /* Preserve the target's r7 + r4 operand order. */
        asm("add r7, r7, r4" : "+r"(indexPtr) : "r"(sprite));
        storePtr = indexPtr;
        /* Keep the target's direct byte load from the r7 work pointer. */
        asm("ldrb %0, [%1]" : "=r"(index) : "r"(indexPtr));
        table = sUnk_83CF980;
        entryAddress = index << 1;
        /* Preserve the target's commutative table-address operand order. */
        asm("add r0, r0, r5" : "+r"(entryAddress) : "r"(table));
        velocity = *(const u16 *)entryAddress;
        zero = 0;
        /* agbcc otherwise spills the fixed r0 address while forming ldrsh. */
        asm("ldrsh %0, [%1, %2]" : "=r"(signedVelocity) : "r"(entryAddress), "r"(zero));
        if (signedVelocity == 0x7FFF) {
            velocity = *(const u16 *)table;
            index = 0;
        }
        {
            register int yPosition asm("r0");
            nextIndex = index + 1;
            finalStore = storePtr;
            *finalStore = nextIndex;
            yPosition = sprite->yPosition;
            yPosition += velocity;
            /* Preserve the target's zero setup before the delayed position store. */
            asm volatile("mov r7, #0\nmov %0, r7" : "=r"(zeroHigh) : : "r7");
            sprite->yPosition = yPosition;
        }
    }

    {
        register u8 *timer asm("r1");
        register int value asm("r0");

        timer = &sprite->work2;
        value = *timer;
        if (value != 0) {
            value--;
            *timer = value;
        }
    }

    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition + 100));
        {
            register u8 *collision asm("r5");
            collision = &gSpriteCollisionTileType;
            if (*collision == 17) {
                register int one asm("r5");
                register int slot asm("r2");

                gCuckooCondorPendulumLength = 1;
                one = 1;
                sprite->disableWarioCollisionTimer = one;
                slot = SpriteUtilFindSpriteSlotOrU8Max(PSPRITE_CATBAT_MINE_SPAWNER);
                slot = (u8)slot;
                if (slot != 0xFF)
                    gSpriteData[slot].disableWarioCollisionTimer = one;
                sprite->xPosition += 4;
                {
                    register int oldStatus asm("r1");
                    register int toggledStatus asm("r0");
                    oldStatus = sprite->status;
                    if (oldStatus & SPRITE_STATUS_ONSCREEN)
                        goto finalCheck;
                    /* Preserve the target's immediate XOR destination in r0. */
                    asm("mov r0, #64\neor r0, r0, r1"
                        : "=r"(toggledStatus) : "r"(oldStatus) : "cc");
                    sprite->status = toggledStatus;
                }
                UpdateCatbatHitboxFacing();
                sprite->xPosition -= 32;
                goto finalCheck;
            }

            gCuckooCondorPendulumLength = zeroHigh;
            sprite->status &= ~SPRITE_STATUS_HIDDEN;
            {
                register int comparison;
                comparison = warioXRight;
                if ((u32)comparison > (u32)oldX) {
                    register struct WarioData *warioCheck asm("r1");
                    warioCheck = wario;
                    if (warioCheck->reaction != 8) {
                        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition - 160));
                        /* Keep the original comparison value live through this call. */
                        asm("" : : "r"(comparison));
                if (*collision == 17)
                    sprite->xPosition += 2;
                else
                    sprite->xPosition += 1;

                sprite = &gCurrentSprite;
                if (sprite->health <= 1 && sprite->work2 == 25) {
                    DespawnActiveCatbatProjectile();
                    SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 1, 0, sprite->yPosition,
                        sprite->xPosition, SPRITE_STATUS_FACING_RIGHT);
                }
                        goto finalCheck;
                    }
                }
            }
        }

        {
            register struct PrimarySpriteData *fallback asm("r0");
            register int xPosition asm("r1");
            fallback = &gCurrentSprite;
            xPosition = fallback->xPosition + 4;
            fallback->xPosition = xPosition;
            fallback->currentAnimationFrame++;
        }
        goto end;
    }

    func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition - 100));
    {
        register u8 *collision asm("r5");
        collision = &gSpriteCollisionTileType;
        if (*collision == 17) {
            register int one asm("r5");
            register int slot asm("r2");

            gCuckooCondorPendulumLength = 1;
            one = 1;
            sprite->disableWarioCollisionTimer = one;
            slot = SpriteUtilFindSpriteSlotOrU8Max(PSPRITE_CATBAT_MINE_SPAWNER);
            slot = (u8)slot;
            if (slot != 0xFF)
                gSpriteData[slot].disableWarioCollisionTimer = one;
            sprite->xPosition -= 4;
            {
                register int oldStatus asm("r1");
                register int toggledStatus asm("r0");
                oldStatus = sprite->status;
                if (oldStatus & SPRITE_STATUS_ONSCREEN)
                    goto finalCheck;
                /* Preserve the target's immediate XOR destination in r0. */
                asm("mov r0, #64\neor r0, r0, r1"
                    : "=r"(toggledStatus) : "r"(oldStatus) : "cc");
                sprite->status = toggledStatus;
            }
            UpdateCatbatHitboxFacing();
            sprite->xPosition += 32;
            goto finalCheck;
        }

        {
            register s8 *flag asm("r0");
            register int clearValue asm("r7");
            flag = &gCuckooCondorPendulumLength;
            clearValue = zeroHigh;
            *flag = clearValue;
        }
        {
            register int oldStatus asm("r1");
            register int clearedStatus asm("r0");
            oldStatus = sprite->status;
            clearedStatus = 0xFFFB;
            clearedStatus &= oldStatus;
            sprite->status = clearedStatus;
        }
        if ((u32)warioXLeft < (u32)oldXLeft) {
            register struct WarioData *warioCheck asm("r1");
            warioCheck = wario;
            if (warioCheck->reaction != 8) {
                func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition + 160));
            if (*collision == 17)
                sprite->xPosition -= 2;
            else
                sprite->xPosition -= 1;

            sprite = &gCurrentSprite;
            if (sprite->health <= 1 && sprite->work2 == 25) {
                DespawnActiveCatbatProjectile();
                SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 1, 0, sprite->yPosition,
                    sprite->xPosition, 0);
            }
                goto finalCheck;
            }
        }
    }

    {
        register struct PrimarySpriteData *fallback asm("r0");
        register int xPosition asm("r1");
        fallback = &gCurrentSprite;
        xPosition = fallback->xPosition - 4;
        fallback->xPosition = xPosition;
        fallback->currentAnimationFrame++;
    }
    goto end;

finalCheck:
    sprite = &gCurrentSprite;
    if (sprite->work2 == 0 && *(vu8 *)&gCuckooCondorPendulumLength == 0) {
        register int status asm("r1");
        register int facing asm("r0");
        register int collisionY asm("r0");
        register int collisionX asm("r1");

        status = sprite->status;
        facing = SPRITE_STATUS_FACING_RIGHT;
        facing &= status;
        if (facing != 0) {
            collisionY = sprite->yPosition;
            collisionX = sprite->xPosition;
            collisionX -= 160;
            goto callFinalCollision;
        }
        collisionY = sprite->yPosition;
        collisionX = sprite->xPosition;
        collisionX += 160;
callFinalCollision:
        collisionX <<= 16;
        collisionX = (u32)collisionX >> 16;
        ((void (*)(int, int))func_8023BFC)(collisionY, collisionX);
        if (gSpriteCollisionTileType != 17)
            sprite->pose = 17;
    }

end:
    ;
}
void InitCatbatLandingAttack(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register int zero asm("r0");

    sprite = &gCurrentSprite;
    {
        register u8 *work asm("r1");
        work = &sprite->work3;
        zero = 0;
        *work = zero;
        sprite->pose = 18;
        work = &sprite->work0;
        *work = zero;
        work++;
        *work = zero;
    }
    m4aSongNumStart(SOUND_AF);
}
void UpdateCatbatLandingAttack(void)
{
    UpdateCatbatGraphicsAnimation(sUnk_83CF920);
    {
        register struct PrimarySpriteData *sprite asm("r3");
        register u8 *indexPtr asm("r12");
        register int index asm("r2");
        register const s16 *table asm("r5");
        register int entryAddress asm("r0");
        register const s16 *entry asm("r0");
        register u16 velocity asm("r4");
        register int zero asm("r6");
        register int signedVelocity asm("r1");

        sprite = &gCurrentSprite;
        entryAddress = 42;
        asm("" : "+r"(entryAddress));
        entryAddress += (int)sprite;
        indexPtr = (u8 *)entryAddress;
        index = *indexPtr;
        table = sUnk_83CF9EA;
        entryAddress = index << 1;
        entryAddress += (int)table;
        entry = (const s16 *)entryAddress;
        velocity = *(const u16 *)entry;
        zero = 0;
        asm("ldrsh %0, [%1, %2]" : "=r"(signedVelocity)
            : "r"(entry), "r"(zero));
        if (signedVelocity == 0x7FFF) {
            register int previousOffset asm("r1");
            register const s16 *previous asm("r1");
            register u16 position asm("r0");

            previousOffset = index - 1;
            previousOffset <<= 1;
            previousOffset += (int)table;
            previous = (const s16 *)previousOffset;
            position = sprite->yPosition;
            asm("" : "+r"(position));
            {
                register u16 previousValue asm("r1");
                previousValue = *(const u16 *)previous;
                /* agbcc reverses this commutative add and changes the Thumb opcode. */
                asm("add r0, r0, r1" : "+r"(position) : "r"(previousValue));
            }
            sprite->yPosition = position;
        } else {
            register int nextIndex asm("r0");
            register u8 *storePtr asm("r1");
            register u16 position asm("r0");

            nextIndex = index + 1;
            storePtr = indexPtr;
            *storePtr = nextIndex;
            position = sprite->yPosition;
            position += velocity;
            sprite->yPosition = position;
        }
    }

    {
        register struct PrimarySpriteData *sprite asm("r4");
        register int facingMask asm("r6");
        register int facing asm("r5");
        register int maskedFacing asm("r0");
        register u16 status asm("r1");

        sprite = &gCurrentSprite;
        func_8023BFC((u16)(sprite->yPosition + 128), sprite->xPosition);
        if (gUnk_30000A0.unk_02 != 1)
            return;

        sprite->pose = 20;
        sprite->work2 = 40;
        status = sprite->status;
        facingMask = SPRITE_STATUS_FACING_RIGHT;
        maskedFacing = facingMask;
        maskedFacing &= status;
        maskedFacing <<= 16;
        facing = (u32)maskedFacing >> 16;
        if (facing != 0) {
            SpriteSpawnSecondary(sprite->yPosition + 128, sprite->xPosition - 60, 7);
            SpriteSpawnSecondary(sprite->yPosition + 128, sprite->xPosition - 4, 7);
            SpriteSpawnSecondary(sprite->yPosition + 128, sprite->xPosition - 116, 7);
            SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_LANDING_DEBRIS, gBossTookDamage, 0, sprite->yPosition + 128,
                sprite->xPosition - 128, facingMask);
        } else {
            SpriteSpawnSecondary(sprite->yPosition + 128, sprite->xPosition + 4, 7);
            SpriteSpawnSecondary(sprite->yPosition + 128, sprite->xPosition + 60, 7);
            SpriteSpawnSecondary(sprite->yPosition + 128, sprite->xPosition + 116, 7);
            SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_LANDING_DEBRIS, gBossTookDamage, 0, sprite->yPosition + 128,
                sprite->xPosition + 128, facing);
        }
        gBossTookDamage++;
    }
}
void UpdateCatbatLandingRecovery(void)
{
    register struct PrimarySpriteData *sprite asm("r3");
    register u16 position asm("r2");
    register u16 difference asm("r1");
    register u16 background asm("r0");

    UpdateCatbatGraphicsAnimation(sUnk_83CF920);
    sprite = &gCurrentSprite;
    position = sprite->yPosition;
    difference = position >> 2;
    /* Keep the sprite quarter-position in r1 while loading the background position. */
    asm("" : "+r"(difference));
    background = gBg1YPosition >> 2;
    difference -= background;
    difference = (u16)difference;
    if (difference > 80) {
        register int nextPosition asm("r0");
        nextPosition = position;
        nextPosition -= 8;
        sprite->yPosition = nextPosition;
    } else {
        register u8 *timer asm("r1");
        register int value asm("r0");

        timer = &sprite->work2;
        value = *timer - 1;
        *timer = value;
        value <<= 24;
        if (value == 0)
            sprite->pose = 15;
    }
}
void InitCatbatDefeat(void)
{
    register struct PrimarySpriteData *timerSprite asm("r1");
    register int timerValue asm("r0");
    register struct PrimarySpriteData *sprite asm("r0");
    register int zero asm("r2");
    register int pose asm("r1");
    register struct WarioData *wario asm("r1");

    timerSprite = &gCurrentSprite;
    timerValue = timerSprite->health;
    if (timerValue != 0) {
        timerValue--;
        timerSprite->health = timerValue;
        if ((timerValue << 24) == 0) {
            gSwitchStates[2] = 3;
            gTimerState = 11;
            SpriteUtilSetWarioBossVictoryPose();
        }
        UpdateBossHealthGauge();
    }

    gCuckooCondorMoveRight = 1;
    sprite = &gCurrentSprite;
    zero = 0;
    pose = 50;
    sprite->pose = pose;
    sprite->pOamData = sCatbatOam_83CE490;
    /* agbcc otherwise copies the existing r2 zero before this byte store. */
    asm("strb r2, [r0, #22]");
    sprite->animationTimer = zero;
    sprite = (struct PrimarySpriteData *)((u8 *)sprite + 41);
    pose = 64;
    *(u8 *)sprite = pose;
    wario = &gWarioData;
    SpriteSpawnSecondary(wario->yPosition, wario->xPosition, 5);
    SpriteUtilTurnTowardWario();
    UpdateCatbatHitboxFacing();
    VoiceSetPlay(14);
}
void UpdateCatbatDefeat(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u16 position asm("r2");
    register u8 *timerPtr asm("r1");

    sprite = &gCurrentSprite;
    position = sprite->yPosition;
    if ((u16)((position >> 2) - (gBg1YPosition >> 2)) > 80) {
        register int newPosition asm("r0");
        newPosition = position - 2;
        sprite->yPosition = newPosition;
    }

    timerPtr = &sprite->work2;
    if (*timerPtr != 0) {
        register int timerValue asm("r0");
        register u8 timer asm("r5");

        timerValue = *timerPtr;
        timerValue--;
        *timerPtr = timerValue;
        timerValue <<= 24;
        timer = (u32)timerValue >> 24;
        if (timer > 31) {
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
                func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition - 96));
                if (gSpriteCollisionTileType != 17)
                    sprite->xPosition -= 4;
            } else {
                func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition + 96));
                if (gSpriteCollisionTileType != 17)
                    sprite->xPosition += 4;
            }

            if ((timer & 7) == 0) {
                if (timer & 8) {
                    gCurrentSprite.palette = 4;
                    if (timer == 56)
                        VoiceSetPlay(0);
                } else {
                    gCurrentSprite.palette = 0;
                }
            }
        }
    } else {
        if (sprite->health == 0)
            sprite->pose = 120;
        else
            sprite->pose = 110;
    }
}
void InitCatbatDamaged(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register int zero asm("r5");
    int health;
    u8 slot;

    sprite = &gCurrentSprite;
    health = sprite->health;
    if (health != 0) {
        health--;
        sprite->health = health;
        UpdateBossHealthGauge();
    }

    gCuckooCondorMoveRight = 1;
    zero = 0;
    sprite->pose = 109;
    sprite->pOamData = sCatbatOam_83CD35C;
    /* agbcc otherwise copies the already-zero r5 through r0 before this byte store. */
    asm("strb r5, [r4, #22]");
    sprite->animationTimer = zero;
    if (sprite->health < ((gInitialHealth >> 1) + 1)) {
        gUnk_3000A60 = 1;
        slot = SpriteUtilFindSpriteSlotOrU8Max(PSPRITE_CATBAT_MINE_SPAWNER);
        if (slot != 0xFF)
            gSpriteData[slot].status = zero;
        {
            register u8 *timer asm("r1");
            timer = &sprite->work2;
            *timer = 192;
        }
    } else {
        register u8 *timer asm("r1");
        timer = &sprite->work2;
        *timer = 64;
    }
    SpriteUtilTurnTowardWario();
    UpdateCatbatHitboxFacing();
    VoiceSetPlay(14);
}
void UpdateCatbatDamaged(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register struct PrimarySpriteData *savedSprite asm("r6");
    register u8 *timerPtr asm("r1");
    register int timerValue asm("r0");
    register int timer asm("r5");
    u16 position;

    sprite = &gCurrentSprite;
    position = sprite->yPosition;
    timerValue = (u16)((position >> 2) - (gBg1YPosition >> 2));
    savedSprite = sprite;
    if ((u32)timerValue > 80)
        sprite->yPosition = position - 2;

    timerPtr = &sprite->work2;
    timerValue = *timerPtr;
    if (timerValue == 0)
        goto setPose;

    timerValue--;
    *timerPtr = timerValue;
    timerValue <<= 24;
    /* Preserve the original byte-normalization pair before the global load. */
    asm volatile("" : "+r"(timerValue));
    timer = (u32)timerValue >> 24;

    if (gUnk_3000A60 != 0) {
        if ((s8)timer < 0)
            goto move;

        if (timer == 88) {
            SpriteSpawnSecondary(sprite->yPosition - 216, sprite->xPosition, 6);
            SpriteSpawnAsChild(10, 0, 0, sprite->yPosition - 128, sprite->xPosition);
            m4aSongNumStart(SOUND_D5);
        } else if (timer == 80) {
            SpriteSpawnSecondary(sprite->yPosition - 144, sprite->xPosition - 32, 6);
        } else if (timer == 72) {
            SpriteSpawnSecondary(sprite->yPosition - 144, sprite->xPosition + 32, 6);
        } else if (timer == 64) {
            DmaCopy16(3, sUnk_83CBE54, (void *)0x06015420, 0xE0);
            sprite->warioCollision = 63;
            sprite->pOamData = sCatbatOam_83CE490;
        }
        goto end;
    }

    if ((u8)timer <= 31)
        goto end;

move:
    sprite = savedSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition - 96));
        if (gSpriteCollisionTileType != 17)
            sprite->xPosition -= 4;
    } else {
        func_8023BFC(savedSprite->yPosition, (u16)(savedSprite->xPosition + 96));
        if (gSpriteCollisionTileType != 17)
            savedSprite->xPosition += 4;
    }

    if ((timer & 7) == 0) {
        int normalizedBit;

        /* agbcc folds this byte-normalized bit test and deletes its zero branch. */
        asm volatile(
            "mov r0, #8\n"
            "and r0, r0, %1\n"
            "lsl r0, r0, #24\n"
            "lsr %0, r0, #24"
            : "=r"(normalizedBit)
            : "r"(timer)
            : "r0", "cc");
        if (normalizedBit != 0) {
            gCurrentSprite.palette = 4;
            if (timer == 56)
                VoiceSetPlay(0);
        } else {
            gCurrentSprite.palette = normalizedBit;
        }
    }
    goto end;

setPose:
    sprite->pose = 110;

end:
    ;
}
void InitCatbatProjectileAttack(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register struct PrimarySpriteData *current asm("r2");
    register const struct AnimationFrame *animation asm("r0");
    register int alternate asm("r0");

    sprite = &gCurrentSprite;
    sprite->pose = 111;
    alternate = gUnk_3000A60;
    current = sprite;
    if (alternate != 0)
        animation = sCatbatOam_83CE4D0;
    else
        animation = sCatbatOam_83CD3EC;
    current->pOamData = animation;
    {
        register int zeroFrame asm("r0");
        register int zeroWork asm("r1");
        register u8 *work asm("r0");

        zeroFrame = 0;
        /* agbcc otherwise copies the existing r0 zero before this byte store. */
        asm("strb r0, [r2, #22]");
        zeroWork = 0;
        current->animationTimer = zeroFrame;
        work = &current->work0;
        *work = zeroWork;
        work++;
        *work = zeroWork;
    }
    {
        register u8 *timer asm("r1");
        register int value asm("r0");
        timer = &current->work2;
        value = 40;
        *timer = value;
    }
    m4aSongNumStart(SOUND_B2);
}
void UpdateCatbatProjectileAttackCharge(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");
    register int value asm("r0");

    UpdateCatbatGraphicsAnimation(sUnk_83CF968);
    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    value = *timer - 1;
    *timer = value;
    value <<= 24;
    if (value == 0)
        sprite->pose = 112;
}
void InitCatbatProjectileAttackRelease(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register const struct AnimationFrame *animation asm("r0");

    sprite = &gCurrentSprite;
    sprite->pose = 113;
    if (gUnk_3000A60 != 0)
        animation = sCatbatOam_83CE4A8;
    else
        animation = sCatbatOam_83CD374;
    sprite->pOamData = animation;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work2 = 64;
    SpriteUtilTurnTowardWario();
    UpdateCatbatHitboxFacing();
}
void UpdateCatbatProjectileAttackRelease(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register u8 *timerPtr asm("r3");
    register int timerValue asm("r0");
    register int normalizedTimer asm("r1");
    register int status asm("r0");
    register int facingMask asm("r2");
    register int statusBit asm("r1");
    register int facing asm("r4");

    UpdateCatbatGraphicsAnimation(sUnk_83CF968);
    sprite = &gCurrentSprite;
    timerPtr = &sprite->work2;
    timerValue = *timerPtr;
    timerValue--;
    *timerPtr = timerValue;
    timerValue <<= 24;
    normalizedTimer = (u32)timerValue >> 24;
    if (normalizedTimer != 0) {
        status = sprite->status;
        facingMask = SPRITE_STATUS_FACING_RIGHT;
        statusBit = facingMask;
        statusBit &= status;
        statusBit = ((u32)statusBit << 16) >> 16;
        statusBit = -statusBit;
        facing = statusBit >> 31;
        facing &= facingMask;

        switch (*timerPtr) {
            case 60:
                DespawnActiveCatbatProjectile();
                SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 0, 0, sprite->yPosition, sprite->xPosition, facing);
                break;
            case 40:
                DespawnActiveCatbatProjectile();
                SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 3, 0, sprite->yPosition, sprite->xPosition, facing);
                break;
            case 20:
                DespawnActiveCatbatProjectile();
                SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 4, 0, sprite->yPosition, sprite->xPosition, facing);
                break;
        }
    } else {
        sprite->pose = 15;
        gCuckooCondorMoveRight = normalizedTimer;
    }
}
void InitCatbatMoveRight(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r3");
    register int zero asm("r1");

    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    zero = 0;
    *timer = 45;
    sprite->pose = 32;
    {
        register u8 *work asm("r0");
        work = &sprite->work0;
        *work = zero;
        work++;
        *work = zero;
    }
    m4aSongNumStart(SOUND_B2);
}
void UpdateCatbatMoveRight(void)
{
    struct PrimarySpriteData *sprite;
    u16 position;

    UpdateCatbatGraphicsAnimation(sUnk_83CF930);
    sprite = &gCurrentSprite;
    if (sprite->work2 != 0) {
        sprite->work2--;
        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition + 64));
        if (gSpriteCollisionTileType != 17)
            sprite->xPosition += 4;
        position = sprite->yPosition;
        if ((u16)((position >> 2) - (gBg1YPosition >> 2)) > 64)
            sprite->yPosition = position - 1;
    } else {
        position = sprite->yPosition;
        if ((u16)((position >> 2) - (gBg1YPosition >> 2)) > 64)
            sprite->yPosition = position - 4;
        else
            sprite->pose = 21;
    }
}
void InitCatbatMoveLeft(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r3");
    register int zero asm("r1");

    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    zero = 0;
    *timer = 45;
    sprite->pose = 34;
    {
        register u8 *work asm("r0");
        work = &sprite->work0;
        *work = zero;
        work++;
        *work = zero;
    }
    m4aSongNumStart(SOUND_B2);
}
void UpdateCatbatMoveLeft(void)
{
    struct PrimarySpriteData *sprite;
    u16 position;

    UpdateCatbatGraphicsAnimation(sUnk_83CF930);
    sprite = &gCurrentSprite;
    if (sprite->work2 != 0) {
        sprite->work2--;
        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition - 64));
        if (gSpriteCollisionTileType != 17)
            sprite->xPosition -= 4;
        position = sprite->yPosition;
        if ((u16)((position >> 2) - (gBg1YPosition >> 2)) > 64)
            sprite->yPosition = position - 1;
    } else {
        position = sprite->yPosition;
        if ((u16)((position >> 2) - (gBg1YPosition >> 2)) > 64)
            sprite->yPosition = position - 4;
        else
            sprite->pose = 21;
    }
}
void InitCatbatIdleAttack(void)
{
    struct PrimarySpriteData *sprite;

    sprite = &gCurrentSprite;
    sprite->pose = 22;
    if (gUnk_3000A60 != 0)
        sprite->pOamData = sCatbatOam_83CE4A8;
    else
        sprite->pOamData = sCatbatOam_83CD374;
    sprite->currentAnimationFrame = 0;
    sprite->animationTimer = 0;
    sprite->work2 = 60;
}
void UpdateCatbatIdleAttack(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u8 *timer asm("r2");
    register int oldTimer asm("r0");
    register int timerValue asm("r1");
    register int shiftedTimer asm("r0");
    register u16 status asm("r1");
    register int facingMask asm("r6");
    register int facingTemp asm("r0");
    register int facing asm("r5");

    UpdateCatbatGraphicsAnimation(sUnk_83CF930);
    sprite = &gCurrentSprite;
    timer = &sprite->work2;
    oldTimer = *timer;
    timerValue = oldTimer - 1;
    *timer = timerValue;
    shiftedTimer = timerValue << 24;
    if (shiftedTimer != 0) {
        shiftedTimer = (u32)shiftedTimer >> 24;
        if (shiftedTimer == 40) {
            status = sprite->status;
            facingMask = SPRITE_STATUS_FACING_RIGHT;
            facingTemp = facingMask;
            facingTemp &= status;
            facing = ((u32)facingTemp << 16) >> 16;
            if (facing != 0) {
                DespawnActiveCatbatProjectile();
                SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 0, 0, sprite->yPosition, sprite->xPosition, facingMask);
            } else {
                DespawnActiveCatbatProjectile();
                SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_PROJECTILE, 0, 0, sprite->yPosition, sprite->xPosition, facing);
            }
        }
    } else {
        sprite->pose = 15;
    }
}
void InitCatbatDeathExplosion(void)
{
    register struct PrimarySpriteData *sprite asm("r0");
    register int zero asm("r2");

    sprite = &gCurrentSprite;
    zero = 0;
    sprite->pose = 121;
    sprite->pOamData = sCatbatOam_83CE4F8;
    sprite->currentAnimationFrame = zero;
    /* agbcc otherwise copies the existing zero from r2 before this halfword store. */
    asm("strh r2, [r0, #20]");
    sprite->work2 = 120;
    m4aSongNumStart(SOUND_AD);
}
void UpdateCatbatDeathExplosion(void)
{
    register struct PrimarySpriteData *base asm("r1");
    register u8 *timerPtr asm("r2");
    register struct PrimarySpriteData *sprite asm("r4");
    register int timerValue asm("r0");
    u8 timer;

    base = &gCurrentSprite;
    timerPtr = &base->work2;
    timerValue = *timerPtr;
    timerValue--;
    *timerPtr = timerValue;
    timer = *timerPtr;
    sprite = base;
    switch (timer) {
        case 110:
            func_801E430(11, 0, 0, sprite->yPosition - 192, sprite->xPosition);
            break;
        case 107:
            func_801E430(11, 0, 0, sprite->yPosition - 192, sprite->xPosition - 64);
            break;
        case 103:
            func_801E430(11, 0, 0, sprite->yPosition - 192, sprite->xPosition + 128);
            break;
        case 100:
            func_801E430(11, 0, 0, sprite->yPosition - 128, sprite->xPosition - 32);
            break;
        case 97:
            func_801E430(11, 0, 0, sprite->yPosition - 128, sprite->xPosition - 128);
            break;
        case 93:
            func_801E430(11, 0, 0, sprite->yPosition - 128, sprite->xPosition + 64);
            break;
        case 90:
            func_801E430(11, 0, 0, sprite->yPosition - 64, sprite->xPosition + 32);
            break;
        case 87:
            func_801E430(11, 0, 0, sprite->yPosition - 64, sprite->xPosition - 64);
            break;
        case 83:
            func_801E430(11, 0, 0, sprite->yPosition - 64, sprite->xPosition + 128);
            break;
        case 80:
            func_801E430(11, 0, 0, sprite->yPosition, sprite->xPosition);
            break;
        case 77:
            func_801E430(11, 0, 0, sprite->yPosition, sprite->xPosition - 128);
            break;
        case 73:
            func_801E430(11, 0, 0, sprite->yPosition, sprite->xPosition + 96);
            break;
        case 70:
            func_801E430(11, 0, 0, sprite->yPosition + 64, sprite->xPosition - 32);
            break;
        case 67:
            func_801E430(11, 0, 0, sprite->yPosition + 64, sprite->xPosition - 96);
            break;
        case 63:
            func_801E430(11, 0, 0, sprite->yPosition + 64, sprite->xPosition + 64);
            break;
        case 60:
            func_801E430(11, 0, 0, sprite->yPosition + 128, sprite->xPosition - 32);
            break;
        case 57:
            func_801E430(11, 0, 0, sprite->yPosition + 128, sprite->xPosition - 96);
            break;
        case 53:
            func_801E430(11, 0, 0, sprite->yPosition + 128, sprite->xPosition + 64);
            break;
        case 50:
            func_801E430(10, 0, 0, sprite->yPosition + 96, sprite->xPosition + 96);
            break;
        case 40:
            func_801E430(10, 0, 0, sprite->yPosition, sprite->xPosition);
            break;
        case 30:
            func_801E430(10, 0, 0, sprite->yPosition - 64, sprite->xPosition - 64);
            break;
        case 20:
            func_801E430(10, 0, 0, sprite->yPosition + 128, sprite->xPosition + 64);
            func_801E430(10, 0, 0, sprite->yPosition + 32, sprite->xPosition);
            break;
        case 24:
            func_801E430(10, 0, 0, sprite->yPosition + 32, sprite->xPosition - 128);
            func_801E430(10, 0, 0, sprite->yPosition + 32, sprite->xPosition + 128);
            func_801E430(10, 0, 0, sprite->yPosition + 128, sprite->xPosition);
            break;
        case 0:
            func_801E430(207, 0, 0, sprite->yPosition, sprite->xPosition);
            sprite->status = 0;
            break;
    }
}
void InitCatbatShopItemHit(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *work asm("r3");
    register int delay asm("r0");
    register int zero asm("r1");

    switch (gCurrentShopItem) {
    case 2: delay = 11; break;
    case 3: delay = 9; break;
    case 4: delay = 8; break;
    case 5: delay = 2; break;
    case 6: delay = 5; break;
    case 7: delay = 3; break;
    case 8: delay = 4; break;
    default: delay = 10; break;
    }

    sprite = &gCurrentSprite;
    work = &sprite->work2;
    zero = 0;
    *work = delay;
    sprite->pOamData = sCatbatOam_83CE490;
    /* agbcc otherwise copies the existing r1 zero before this byte store. */
    asm("strb r1, [r2, #22]");
    sprite->animationTimer = zero;
    gPaletteFlashTimer = 32;
    sprite->pose = 123;
    {
        register int health asm("r0");
        health = sprite->health;
        if (health != 0) {
            health--;
            sprite->health = health;
            UpdateBossHealthGauge();
            m4aSongNumStart(SE_DAMAGE);
        }
    }
    VoiceSetPlay(14);
}
void UpdateCatbatShopItemHit(void)
{
    register u8 *globalTimer asm("r5");
    register int timerValue asm("r0");

    globalTimer = &gPaletteFlashTimer;
    timerValue = *globalTimer;
    if (timerValue != 0) {
        register int timer asm("r1");
        register int bit asm("r0");

        timerValue--;
        *globalTimer = timerValue;
        timerValue <<= 24;
        timer = (u32)timerValue >> 24;
        bit = 7;
        bit &= timer;
        if (bit == 0) {
            bit = 8;
            bit &= timer;
            /* Keep the byte normalization as the target's separate shifts. */
            asm("" : "+r"(bit));
            bit <<= 24;
            timer = (u32)bit >> 24;
            if (timer != 0)
                gCurrentSprite.palette = 4;
            else
                gCurrentSprite.palette = timer;
        }
    } else {
        register struct PrimarySpriteData *base asm("r1");
        register u8 *work2Ptr asm("r0");
        register int health asm("r4");
        register int healthCopy asm("r2");
        register struct PrimarySpriteData *sprite asm("r3");
        register int work2 asm("r0");

        base = &gCurrentSprite;
        work2Ptr = &base->work2;
        health = base->health;
        healthCopy = health;
        sprite = base;
        work2 = *work2Ptr;
        if (healthCopy == work2) {
            register int delay asm("r0");

            switch (gCurrentShopItem) {
                case 3:
                case 4:
                case 6:
                case 8:
                    delay = 240;
                    break;
                case 5:
                case 7:
                    delay = 120;
                    break;
                default:
                    delay = 180;
                    break;
            }
            {
                register u8 *timerPtr asm("r1");
                register int zeroByte asm("r2");

                timerPtr = &sprite->work2;
                zeroByte = 0;
                *timerPtr = delay;
                gInitialHealth = sprite->health;
                sprite->pose = 2;
                sprite->pOamData = sCatbatOam_83CE468;
                /* agbcc otherwise copies the existing r2 zero before this byte store. */
                asm("strb r2, [r3, #22]");
                {
                    register int zeroWork asm("r1");
                    register u8 *work asm("r0");
                    zeroWork = 0;
                    sprite->animationTimer = zeroByte;
                    work = &sprite->work0;
                    *work = zeroWork;
                    work++;
                    *work = zeroWork;
                }
            }
            UpdateCatbatGraphicsAnimation(sUnk_83CF8FC);
        } else {
            globalTimer[0] = 32;
            if (healthCopy != 0) {
                timerValue = health - 1;
                base->health = timerValue;
                UpdateBossHealthGauge();
                m4aSongNumStart(SE_DAMAGE);
            }
        }
    }
}
void InitCatbatGroundWave(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int mask asm("r2");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *distance asm("r0");
    register int extentValue asm("r1");
    register u8 *centerDistance asm("r1");
    register u8 *hitbox asm("r0");
    register u8 *sideHitbox asm("r1");
    register const struct AnimationFrame *oam asm("r0");
    register struct PrimarySpriteData *base asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    mask = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    status = mask;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    base = sprite;
    base->status = status;
    base->warioCollision = 83;

    distance = &sprite->drawDistanceDown;
    extentValue = 16;
    *distance = extentValue;
    distance++;
    asm("" : "+r"(distance));
    *distance = extentValue;

    centerDistance = &sprite->drawDistanceLeftRight;
    *centerDistance = 48;

    hitbox = &sprite->hitboxExtentUp;
    extentValue = 20;
    *hitbox = extentValue;
    hitbox++;
    asm("" : "+r"(hitbox));
    *hitbox = extentValue;

    sideHitbox = &sprite->hitboxExtentLeft;
    *sideHitbox = 56;
    sideHitbox++;
    asm("" : "+r"(sideHitbox));
    *sideHitbox = 52;

    oam = sCatbatOam_83CF594;
    asm("" : "+r"(oam));
    base = sprite;
    base->pOamData = oam;
    base->currentAnimationFrame = zeroByte;
    base->animationTimer = zeroHalf;
    base->pose = 1;
}
void UpdateCatbatGroundWave(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register int one asm("r5");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    if (gWarioPauseTimer == 0) {
        one = gTimerState;
        if (one == 1) {
            sprite->status &= ~SPRITE_STATUS_HIDDEN;
            func_801E430(11, 0, 0, sprite->yPosition, sprite->xPosition);
            sprite->pose = 16;
            {
                register u8 *work asm("r0");
                work = &sprite->work2;
                *work = one;
            }
        }
    }
}
void UpdateCatbatGroundWaveTurn(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register int zero asm("r0");
    register u8 *timer asm("r2");

    sprite = &gCurrentSprite;
    sprite->pOamData = sCatbatOam_83CF5EC;
    zero = 0;
    /* agbcc otherwise copies the existing zero before this byte store. */
    asm("strb r0, [r1, #22]");
    sprite->animationTimer = zero;
    sprite->pose = 16;
    timer = &sprite->work2;
    *timer = 8;
    sprite->warioCollision = 83;
}
void InitCatbatGroundWaveReturn(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register int zero asm("r0");
    register u8 *timer asm("r2");

    sprite = &gCurrentSprite;
    sprite->pOamData = sCatbatOam_83CF594;
    zero = 0;
    /* agbcc otherwise copies the existing zero before this byte store. */
    asm("strb r0, [r1, #22]");
    sprite->animationTimer = zero;
    sprite->pose = 16;
    timer = &sprite->work2;
    *timer = 1;
    sprite->warioCollision = 83;
}
void UpdateCatbatGroundWaveReturn(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register int position asm("r0");
    register int velocity asm("r1");
    register u8 *work asm("r1");

    sprite = &gCurrentSprite;
    if (sprite->status & SPRITE_STATUS_FACING_RIGHT) {
        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition + 80));
        if (gSpriteCollisionTileType == 17) {
            sprite->pose = 17;
            return;
        }
        work = &sprite->work2;
        position = sprite->xPosition;
        velocity = *work;
        position += velocity;
    } else {
        func_8023BFC(sprite->yPosition, (u16)(sprite->xPosition - 80));
        if (gSpriteCollisionTileType == 17) {
            sprite->pose = 17;
            return;
        }
        {
            register u8 *leftWork asm("r0");
            leftWork = &sprite->work2;
            velocity = *leftWork;
            position = sprite->xPosition;
            position -= velocity;
        }
    }
    sprite->xPosition = position;
}
void InitCatbatGroundWaveDisappear(void)
{
    register struct PrimarySpriteData *sprite asm("r1");
    register int zero asm("r0");
    register u8 *timer asm("r2");

    sprite = &gCurrentSprite;
    sprite->pOamData = sCatbatOam_83CF5BC;
    zero = 0;
    /* agbcc otherwise copies the existing zero before this byte store. */
    asm("strb r0, [r1, #22]");
    sprite->animationTimer = zero;
    sprite->pose = 18;
    timer = &sprite->work0;
    *timer = 9;
    sprite->warioCollision = 84;
}
void UpdateCatbatGroundWaveDisappear(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r12");
    register int value asm("r0");
    register int zero asm("r3");
    register u8 pose asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    zero = (u8)value;
    if (zero != 0)
        return;

    pose = sprite->pose;
    switch (pose) {
    case 18: {
        register int clear asm("r1");
        value = sprite->status ^ SPRITE_STATUS_FACING_RIGHT;
        clear = 0;
        sprite->status = value;
        sprite->pOamData = sCatbatOam_83CF5D4;
        sprite->currentAnimationFrame = clear;
        sprite->animationTimer = zero;
        sprite->pose = 20;
        value = 7;
        /* Keep the timer value materialized before copying the ip-held pointer. */
        asm("" : "+r"(value));
        *timer = value;
        break;
    }
    case 20:
        sprite->pose = 15;
        break;
    }
}
void InitCatbatGroundWaveDelay(void)
{
    register struct PrimarySpriteData *sprite asm("r0");
    register int zero asm("r1");

    sprite = &gCurrentSprite;
    sprite->pOamData = sCatbatOam_83CF594;
    zero = 0;
    /* agbcc otherwise copies the existing zero before this byte store. */
    asm("strb r1, [r0, #22]");
    sprite->animationTimer = zero;
    sprite->pose = 40;
    sprite->work0 = 30;
}
void UpdateCatbatGroundWaveDelay(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    value <<= 24;
    if (value == 0)
        sprite->pose = 17;
}
void InitCatbatLandingDebris(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int mask asm("r2");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    int preservedZero;
    int slot;

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    mask = SPRITE_STATUS_IGNORE_SPRITE_COLLISION | SPRITE_STATUS_BACKGROUND;
    status = mask;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    sprite->status = status;

    /* Keep the target's otherwise dead callee-saved zero lifetime. */
    asm("movs %0, #0" : "=l"(preservedZero));
    sprite->warioCollision = 62;
    {
        register u8 *distance asm("r1");
        register int value asm("r0");
        distance = &sprite->drawDistanceDown;
        value = 64;
        *distance = value;
    }
    {
        register u8 *field asm("r0");
        register int sixteen asm("r1");
        field = &sprite->drawDistanceUp;
        *field = zeroByte;
        field++;
        /* Preserve the target's separate increment before the 16 store. */
        asm("" : "+r"(field));
        sixteen = 16;
        *field = sixteen;

        {
            register int hitboxOffset asm("r5");
            register int four asm("r0");
            hitboxOffset = 35;
            four = 4;
            /* agbcc otherwise converts this indexed byte store to base+offset. */
            asm("strb r0, [r5, r4]" : : "r"(four), "r"(hitboxOffset), "r"(sprite));
        }
        field = &sprite->hitboxExtentDown;
        *field = zeroByte;
        {
            register int address asm("r0");
            register int savedAddress asm("r12");
            register int value asm("r0");
            register u8 *left asm("r5");
            asm("" : "=r"(address) : "0"(37));
            address += (int)sprite;
            savedAddress = address;
            value = 32;
            left = (u8 *)savedAddress;
            *left = value;
        }
        {
            register int address asm("r0");
            register int savedAddress asm("r12");
            register int value asm("r0");
            register u8 *right asm("r5");
            asm("" : "=r"(address) : "0"(38));
            address += (int)sprite;
            savedAddress = address;
            value = 48;
            right = (u8 *)savedAddress;
            *right = value;
        }

        sprite->pOamData = sCatbatOam_83CF370;
        /* agbcc otherwise copies the existing r2 zero before this byte store. */
        asm("strb r2, [r4, #22]");
        sprite->animationTimer = zeroHalf;
        sprite->pose = sixteen;
    }

    {
        register int roomBit asm("r5");
        register int healthBit asm("r6");
        healthBit = 1;
        roomBit = 1;
        sprite->drawPriority = roomBit;
        {
            register u8 *work1 asm("r0");
            register u8 *work2 asm("r1");
            work1 = &sprite->work1;
            *work1 = zeroByte;
            work2 = &sprite->work2;
            *work2 = 42;
            work1 = &sprite->work3;
            *work1 = zeroByte;
        }
        /* End the initializer zero lifetime before preparing call arguments. */
        asm("" ::: "r2");
        SpriteSpawnAsChild(PSPRITE_CATBAT_DEBRIS_PARTICLE, sprite->roomSlot, 0,
            sprite->yPosition, sprite->xPosition);

        slot = SpriteUtilFindSpriteSlot(PSPRITE_CATBAT);
        {
            register struct PrimarySpriteData *sprites asm("r2");
            register int offset asm("r0");
            register struct PrimarySpriteData *parent asm("r2");
            register unsigned parentHealth asm("r0");

            sprites = gSpriteData;
            offset = slot * sizeof(struct PrimarySpriteData);
            /* Preserve the target's slot-offset plus array-base operand order. */
            asm("add r2, r0, r2" : "+r"(sprites) : "r"(offset));
            parent = sprites;
            parentHealth = parent->health;
            if (parentHealth <= 5)
                sprite->health |= 16;
            parentHealth = parent->health;
            if (parentHealth <= 9) {
                if (parentHealth <= 7)
                    goto setCatbatHealthBit;
                /*
                 * agbcc either reverses the Thumb AND destination or deletes
                 * the zero test. Keep only this tiny parity gate in assembly.
                 */
                asm volatile(
                    "ldrb r1, [r4, #24]\n"
                    "add r0, r5, #0\n"
                    "and r0, r1\n"
                    "cmp r0, #0\n"
                    "beq 1f");
setCatbatHealthBit:
                sprite->health |= healthBit;
                asm volatile("1:");
            }
        }
    }

    /* Preserve r7 across both calls, matching the target prologue. */
    asm("" : : "l"(preservedZero));
}
void UpdateCatbatLandingDebris(void)
{
    register struct PrimarySpriteData *initialSprite asm("r1");
    register u8 *timerPtr asm("r2");
    register u32 timerValue asm("r0");

    initialSprite = &gCurrentSprite;
    timerPtr = &initialSprite->work2;
    timerValue = *timerPtr;
    if (timerValue != 0) {
        u32 timerByte;
        timerValue--;
        *timerPtr = timerValue;
        timerValue <<= 24;
        /* Prevent agbcc from proving the byte-normalized countdown nonzero. */
        asm volatile("" : "+r"(timerValue));
        timerByte = timerValue >> 24;
        if (timerByte != 0) {
            switch (initialSprite->animationTimer - 1) {
                case 0:
                    gCurrentSprite.hitboxExtentUp = 40;
                    break;
                case 1:
                    gCurrentSprite.hitboxExtentUp = 72;
                    break;
                case 2:
                    gCurrentSprite.hitboxExtentUp = 104;
                    break;
                case 3:
                    gCurrentSprite.hitboxExtentUp = 136;
                    break;
                case 4:
                    gCurrentSprite.hitboxExtentUp = 168;
                    break;
                case 5:
                    gCurrentSprite.hitboxExtentUp = 200;
                    break;
                case 6:
                    gCurrentSprite.hitboxExtentUp = 232;
                    break;
                default:
                    initialSprite->hitboxExtentUp = 16;
                    break;
            }
        } else {
            initialSprite->pOamData = sCatbatOam_83CF3F0;
            initialSprite->currentAnimationFrame = timerByte;
            initialSprite->animationTimer = timerByte;
            m4aSongNumStart(SOUND_B1);
        }
    }

    {
        register struct PrimarySpriteData *sprite asm("r2");
        register u16 firstStatus asm("r1");
        register int onscreen asm("r0");
        register u16 status asm("r3");
        register struct PrimarySpriteData *collisionSprite asm("r4");

        sprite = &gCurrentSprite;
        firstStatus = sprite->status;
        onscreen = SPRITE_STATUS_ONSCREEN;
        onscreen &= firstStatus;
        onscreen = ((u32)onscreen << 16) >> 16;
        if (onscreen == 0)
            sprite->status = onscreen;

        {
            register u32 collisionY asm("r0");
            register u32 collisionX asm("r1");
            status = sprite->status;
            if (status & SPRITE_STATUS_FACING_RIGHT) {
                if (sprite->health & 0xF0) {
                    sprite->xPosition += 6;
                    if (status & SPRITE_STATUS_WARIO_STANDING_ON)
                        gWarioData.xPosition += 6;
                } else {
                    sprite->xPosition += 4;
                    if (status & SPRITE_STATUS_WARIO_STANDING_ON)
                        gWarioData.xPosition += 4;
                }
                collisionSprite = &gCurrentSprite;
                collisionY = collisionSprite->yPosition - 128;
                collisionY <<= 16;
                asm("" : "+r"(collisionY));
                collisionY >>= 16;
                collisionX = collisionSprite->xPosition + 128;
            } else {
                if (sprite->health & 0xF0) {
                    sprite->xPosition -= 6;
                    if (status & SPRITE_STATUS_WARIO_STANDING_ON)
                        gWarioData.xPosition -= 6;
                } else {
                    sprite->xPosition -= 4;
                    if (status & SPRITE_STATUS_WARIO_STANDING_ON)
                        gWarioData.xPosition -= 4;
                }
                collisionSprite = &gCurrentSprite;
                collisionY = collisionSprite->yPosition - 128;
                collisionY <<= 16;
                asm("" : "+r"(collisionY));
                collisionY >>= 16;
                collisionX = collisionSprite->xPosition - 128;
            }
            collisionX <<= 16;
            asm("" : "+r"(collisionX));
            collisionX >>= 16;
            ((void (*)(int, int))func_8023BFC)(collisionY, collisionX);
        }

        if (gSpriteCollisionTileType == 17) {
            collisionSprite->disableWarioCollisionTimer = 1;
            collisionSprite->status ^= SPRITE_STATUS_HIDDEN;
        }
    }

    {
        register struct PrimarySpriteData *sprite asm("r3");
        register u8 health asm("r1");
        register u8 *indexPtr asm("r12");
        register int index asm("r2");
        register const s16 *table asm("r5");
        register int entryOffset asm("r0");
        register const s16 *entry asm("r0");
        register u16 velocity asm("r4");
        register int zero asm("r6");
        register int signedVelocity asm("r1");
        register int nextIndex asm("r0");
        register u8 *storePtr asm("r1");

        sprite = &gCurrentSprite;
        if (sprite->work2 == 0) {
            health = sprite->health;
            if (health & 1) {
                if (health & 0xF0) {
                    register int pointerAddress asm("r0");
                    register u8 *pointer asm("r0");
                    pointerAddress = 42;
                    asm("" : "+r"(pointerAddress));
                    pointerAddress += (int)sprite;
                    pointer = (u8 *)pointerAddress;
                    indexPtr = pointer;
                    index = *pointer;
                    table = sUnk_83CFA7C;
                } else {
                    register int pointerAddress asm("r6");
                    register u8 *pointer asm("r6");
                    pointerAddress = 42;
                    asm("" : "+r"(pointerAddress));
                    pointerAddress += (int)sprite;
                    pointer = (u8 *)pointerAddress;
                    indexPtr = pointer;
                    index = *pointer;
                    table = sUnk_83CFA0A;
                }
                entryOffset = index << 1;
                entryOffset += (int)table;
                entry = (const s16 *)entryOffset;
                velocity = *(const u16 *)entry;
                zero = 0;
                asm("ldrsh %0, [%1, %2]" : "=r"(signedVelocity)
                    : "r"(entry), "r"(zero));
                if (signedVelocity == 0x7FFF) {
                    velocity = *(const u16 *)table;
                    index = 0;
                }
                nextIndex = index + 1;
                storePtr = indexPtr;
                asm("" : "+r"(nextIndex), "+r"(storePtr));
                *storePtr = nextIndex;
                sprite->yPosition += velocity;
            }
        }
    }
}
void InitCatbatDebrisParticle(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int mask asm("r2");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *largeExtent asm("r1");
    register u8 *smallExtent asm("r0");
    register int extentValue asm("r1");
    register const struct AnimationFrame *oam asm("r0");
    register struct PrimarySpriteData *base asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    mask = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    status = mask;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    base = sprite;
    base->status = status;
    base->warioCollision = zeroByte;

    largeExtent = &base->drawDistanceDown;
    status = 32;
    *largeExtent = status;
    largeExtent++;
    *largeExtent = status;
    largeExtent++;
    asm("" : "+r"(largeExtent));
    *largeExtent = status;

    smallExtent = &sprite->hitboxExtentUp;
    extentValue = 4;
    *smallExtent = extentValue;
    smallExtent++;
    *smallExtent = extentValue;
    smallExtent++;
    *smallExtent = extentValue;
    smallExtent++;
    asm("" : "+r"(smallExtent));
    *smallExtent = extentValue;

    oam = sCatbatOam_83CF400;
    asm("" : "+r"(oam));
    base = sprite;
    base->pOamData = oam;
    base->currentAnimationFrame = zeroByte;
    base->animationTimer = zeroHalf;
    base->pose = 16;
    base->drawPriority = 1;
}
void UpdateCatbatDebrisParticle(void)
{
    register int slot asm("r2");
    register struct PrimarySpriteData *base asm("r1");
    register struct PrimarySpriteData *parent asm("r2");
    register struct PrimarySpriteData *sprite asm("r1");
    register int offset asm("r0");
    register u16 status asm("r1");
    register int exists asm("r0");
    register int value asm("r0");

    slot = SpriteUtilFindParentSlotOrU8Max(PSPRITE_CATBAT_LANDING_DEBRIS);
    if (slot == 0xFF)
        goto clear;

    base = gSpriteData;
    offset = sizeof(struct PrimarySpriteData);
    offset *= slot;
    /* agbcc reverses this commutative address addition. */
    asm("add r2, r0, r1" : "=r"(slot) : "r"(offset), "r"(base));
    parent = (struct PrimarySpriteData *)slot;
    status = parent->status;
    exists = SPRITE_STATUS_EXISTS;
    exists &= status;
    if (exists != 0)
        goto copy_position;

clear:
    sprite = &gCurrentSprite;
    value = 0;
    sprite->status = value;
    return;

copy_position:
    sprite = &gCurrentSprite;
    value = parent->xPosition;
    sprite->xPosition = value;
}
void InitCatbatProjectile(void)
{
    register struct PrimarySpriteData *sprite asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int mask asm("r2");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    mask = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    status = mask;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    sprite->status = status;
    sprite->warioCollision = zeroByte;

    {
        register u8 *distance asm("r1");
        register int distanceValue asm("r0");

        distance = &sprite->drawDistanceDown;
        distanceValue = 48;
        *distance = distanceValue;
        distance++;
        *distance = distanceValue;
        distance++;
        /* Keep the final distance increment as a separate instruction. */
        asm("" : "+r"(distance));
        *distance = distanceValue;
    }
    {
        register u8 *extent asm("r0");
        register int extentValue asm("r1");

        extent = &sprite->hitboxExtentUp;
        extentValue = 4;
        *extent = extentValue;
        extent++;
        *extent = extentValue;
        extent++;
        *extent = extentValue;
        extent++;
        /* Keep the final extent increment as a separate instruction. */
        asm("" : "+r"(extent));
        *extent = extentValue;
    }

    sprite->pOamData = sCatbatOam_83CD39C;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    sprite->pose = 16;
    sprite->work0 = 54;
    sprite->drawPriority = 1;

    if ((s32)SpriteUtilCountSpriteType(PSPRITE_CATBAT_ATTACK_EFFECT) <= 5) {
        register u16 spriteStatus asm("r1");
        register int facingMask asm("r5");
        register int facingTemp asm("r0");
        register int facing asm("r2");

        m4aSongNumStart(SOUND_B4);
        spriteStatus = sprite->status;
        facingMask = SPRITE_STATUS_FACING_RIGHT;
        facingTemp = facingMask;
        facingTemp &= spriteStatus;
        facingTemp <<= 16;
        facing = (u32)facingTemp >> 16;
        if (facing != 0) {
            SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_ATTACK_EFFECT, sprite->roomSlot, 0,
                sprite->yPosition, sprite->xPosition, facingMask);
        } else {
            SpawnPrimarySpriteWithStatus(PSPRITE_CATBAT_ATTACK_EFFECT, sprite->roomSlot, 0,
                sprite->yPosition, sprite->xPosition, facing);
        }
    }
}
void UpdateCatbatProjectile(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    value = (u8)value;
    if (value == 0)
        sprite->status = value;
}
void InitCatbatAttackEffect(void)
{
    register struct PrimarySpriteData *sprite asm("r12");
    register struct PrimarySpriteData *base asm("r4");
    register u16 oldStatus asm("r1");
    register u16 status asm("r0");
    register int mask asm("r2");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register u8 *extent asm("r0");
    register int sixteen asm("r1");

    sprite = &gCurrentSprite;
    oldStatus = sprite->status;
    mask = SPRITE_STATUS_IGNORE_SPRITE_COLLISION;
    status = mask;
    zeroByte = 0;
    zeroHalf = 0;
    status |= oldStatus;
    status &= ~SPRITE_STATUS_HIDDEN;
    base = sprite;
    base->status = status;
    base->warioCollision = 40;

    extent = &sprite->drawDistanceDown;
    sixteen = 16;
    *extent = sixteen;
    extent++;
    *extent = sixteen;
    extent++;
    *extent = sixteen;
    extent++;
    *extent = sixteen;
    extent++;
    *extent = sixteen;
    extent++;
    *extent = sixteen;
    extent++;
    asm("" : "+r"(extent));
    *extent = sixteen;

    base->pOamData = sCatbatOam_83CF478;
    base->currentAnimationFrame = zeroByte;
    base->animationTimer = zeroHalf;
    base->pose = sixteen;
    base->drawPriority = 1;
    sprite->work3 = zeroByte;
    if (gUnk_3000A60 != 0)
        base->palette = 2;
}
void UpdateCatbatAttackEffect(void)
{
    register struct PrimarySpriteData *base asm("r0");
    register int roomSlot asm("r2");
    register struct PrimarySpriteData *sprite asm("r4");
    if (gTimerState == 11) {
        gCurrentSprite.pose = 108;
        gCurrentSprite.disableWarioCollisionTimer = 1;
        return;
    }

    base = &gCurrentSprite;
    roomSlot = base->roomSlot;
    sprite = base;
    switch (roomSlot) {
        case 1:
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                sprite->xPosition += 4;
            else
                sprite->xPosition -= 4;
            sprite->yPosition += 2;
            break;
        case 2:
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                sprite->xPosition += 2;
            else
                sprite->xPosition -= 2;
            sprite->yPosition += 3;
            break;
        case 3:
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                sprite->xPosition += 4;
            else
                sprite->xPosition -= 4;
            sprite->yPosition -= 1;
            break;
        case 4:
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                sprite->xPosition += 3;
            else
                sprite->xPosition -= 3;
            sprite->yPosition += 1;
            break;
        default:
            if (sprite->status & SPRITE_STATUS_FACING_RIGHT)
                sprite->xPosition += 2;
            else
                sprite->xPosition -= 2;
            sprite->yPosition += 1;
            break;
    }

    {
        register struct PrimarySpriteData *motionSprite asm("r5");
        register u8 *indexPtr asm("r12");
        register int indexValue asm("r2");
        register const s16 *velocityTable asm("r6");
        register int entryAddress asm("r0");
        register const s16 *entry asm("r0");
        register u16 velocityValue asm("r3");
        int zero;
        register int signedVelocity asm("r1");
        register int nextIndex asm("r0");
        register u8 *storePtr asm("r1");

        motionSprite = sprite;
        indexPtr = &motionSprite->work3;
        indexValue = *indexPtr;
        velocityTable = sUnk_83CFACE;
        entryAddress = indexValue << 1;
        /* Preserve the target's table-address operand order. */
        asm("add r0, r0, r6" : "+r"(entryAddress) : "r"(velocityTable));
        entry = (const s16 *)entryAddress;
        velocityValue = *(const u16 *)entry;
        /* Materialize the signed-load zero offset in a low register. */
        asm("movs %0, #0" : "=l"(zero));
        /* Preserve the target's signed halfword read. */
        asm("ldrsh %0, [%1, %2]" : "=l"(signedVelocity) : "l"(entry), "l"(zero));
        if (signedVelocity == 0x7FFF) {
            velocityValue = *(const u16 *)&velocityTable[0];
            indexValue = 0;
        }
        nextIndex = indexValue + 1;
        storePtr = indexPtr;
        *storePtr = nextIndex;
        motionSprite->yPosition += velocityValue;
        func_8023BFC(motionSprite->yPosition, motionSprite->xPosition);
        /* Keep the zero offset live across the call, matching the target save. */
        asm("" : : "l"(zero));
        if (gUnk_30000A0.unk_02 == 1) {
            motionSprite->pose = 108;
        } else {
            register u16 status asm("r1");
            register int existsMask asm("r0");
            status = sprite->status;
            existsMask = 2;
            existsMask &= status;
            existsMask = ((u32)existsMask << 16) >> 16;
            if (existsMask == 0)
                sprite->status = existsMask;
        }
    }
}
void UpdateCatbatAttackEffectDefault(void)
{
    register struct PrimarySpriteData *sprite asm("r5");
    register const s16 *table asm("r4");
    register int cosine asm("r8");
    register int sine asm("r4");
    register int scale asm("r6");
    register int zeroByte asm("r2");
    register int zeroHalf asm("r3");
    register int affine asm("r0");
    u16 status;

    sprite = &gCurrentSprite;
    status = sprite->status;
    affine = SPRITE_STATUS_AFFINE;
    zeroByte = 0;
    zeroHalf = 0;
    affine |= status;
    sprite->status = affine;
    sprite->pOamData = sCatbatOam_83CF4B8;
    sprite->currentAnimationFrame = zeroByte;
    sprite->animationTimer = zeroHalf;
    sprite->pose = 109;
    sprite->work0 = 32;
    sprite->disableWarioCollisionTimer = 1;

    table = sSinCosTable;
    cosine = table[64];
    scale = 256;
    sprite->affinePA = FixedMul(cosine, FixedInverse(scale));
    sine = table[0];
    sprite->affinePB = FixedMul(sine, FixedInverse(scale));
    sprite->affinePC = FixedMul(-sine, FixedInverse(scale));
    sprite->affinePD = FixedMul(cosine, FixedInverse(scale));
}
void UpdateCatbatAttackEffectHit(void)
{
    struct PrimarySpriteData *sprite;
    register int scale asm("r5");
    register const s16 *table asm("r4");
    register int cosine asm("r6");
    register int sine asm("r4");
    register u8 *timer asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    value = (u8)value;
    if (value == 0) {
        sprite->status = value;
        return;
    }

    scale = *timer << 3;
    table = sSinCosTable;
    cosine = table[64];
    sprite->affinePA = FixedMul(cosine, FixedInverse(scale));
    sine = table[0];
    sprite->affinePB = FixedMul(sine, FixedInverse(scale));
    sprite->affinePC = FixedMul(-sine, FixedInverse(scale));
    sprite->affinePD = FixedMul(cosine, FixedInverse(scale));
}
void InitCatbatAttackEffectDespawn(void)
{
    register int value asm("r3");
    register struct PrimarySpriteData *sprite asm("r1");
    register int zero asm("r0");
    register int zeroPalette asm("r2");

    value = gUnk_3000A60;
    if (value != 0) {
        sprite = &gCurrentSprite;
        zero = 0;
        sprite->status = zero;
        SpriteSpawnSecondary(sprite->yPosition, sprite->xPosition, 64);
    } else {
        sprite = &gCurrentSprite;
        sprite->pOamData = sCatbatOam_83CF8BC;
        sprite->currentAnimationFrame = value;
        zeroPalette = 0;
        sprite->animationTimer = value;
        sprite->pose = 50;
        sprite->work0 = 42;
        sprite->palette = zeroPalette;
    }
}
void UpdateCatbatAttackEffectDespawn(void)
{
    register struct PrimarySpriteData *sprite asm("r2");
    register u8 *timer asm("r1");
    register int value asm("r0");

    sprite = &gCurrentSprite;
    sprite->disableWarioCollisionTimer = 1;
    timer = &sprite->work0;
    value = *timer - 1;
    *timer = value;
    value = (u8)value;
    if (value == 0)
        sprite->status = value;
}
void SpriteCatbatMineSpawner(void)
{
    u8 pose;

    pose = gCurrentSprite.pose;
    switch (pose) {
    case 0:
        InitCatbatMineSpawner();
        /* Fall through. */
    case 16:
        UpdateCatbatMineSpawnerPosition();
        break;
    }
}
void SpriteCatbat(void)
{
    if (*(vu8 *)&gCuckooCondorPendulumLength != 0) {
        gCurrentSprite.disableWarioCollisionTimer = 1;
        gCurrentSprite.status ^= 4;
    }

    if (gCuckooCondorHasCapturedWario != 0) {
        if (gCuckooCondorHasCapturedWario == 20 || gCuckooCondorHasCapturedWario == 1) {
            gCurrentSprite.work0 = 0;
            gCurrentSprite.work1 = 0;
        }
        if (gWarioData.reaction == 8)
            gCuckooCondorHasCapturedWario = 19;
        else
            gCuckooCondorHasCapturedWario--;
    }

    switch (gCurrentSprite.pose) {
        case 0: InitCatbat(); break;
        case 1: UpdateCatbatIntroWaitForShop(); break;
        case 2: UpdateCatbatIntroDelay(); break;
        case 3: UpdateCatbatIntroRoar(); break;
        case 4: UpdateCatbatIntroBossTimer(); break;
        case 5: UpdateCatbatIntroWaitForTimer(); break;
        case 15: InitCatbatPatrol(); break;
        case 16: UpdateCatbatPatrol(); break;
        case 17: InitCatbatLandingAttack();
        case 18: UpdateCatbatLandingAttack(); break;
        case 20: UpdateCatbatLandingRecovery(); break;
        case 21: InitCatbatIdleAttack();
        case 22: UpdateCatbatIdleAttack(); break;
        case 31: InitCatbatMoveRight();
        case 32: UpdateCatbatMoveRight(); break;
        case 33: InitCatbatMoveLeft();
        case 34: UpdateCatbatMoveLeft(); break;
        case 49: InitCatbatDefeat();
        case 50: UpdateCatbatDefeat(); break;
        case 108: InitCatbatDamaged();
        case 109: UpdateCatbatDamaged(); break;
        case 120: InitCatbatDeathExplosion();
        case 121: UpdateCatbatDeathExplosion(); break;
        case 110: InitCatbatProjectileAttack();
        case 111: UpdateCatbatProjectileAttackCharge(); break;
        case 112: InitCatbatProjectileAttackRelease();
        case 113: UpdateCatbatProjectileAttackRelease(); break;
        case 122: InitCatbatShopItemHit();
        case 123: UpdateCatbatShopItemHit(); break;
    }
    UpdateCatbatBackgroundAnimation(sUnk_83CF970);
}
void SpriteCatbatGroundWave(void)
{
    if (gTimerState == 11) {
        SpriteUtilDie();
        return;
    }

    switch (gCurrentSprite.pose) {
        case 0: InitCatbatGroundWave(); break;
        case 1: UpdateCatbatGroundWave(); break;
        case 15: InitCatbatGroundWaveReturn();
        case 16: UpdateCatbatGroundWaveReturn(); break;
        case 17: InitCatbatGroundWaveDisappear();
        case 18:
        case 20: UpdateCatbatGroundWaveDisappear(); break;
        case 35:
        case 37: UpdateCatbatGroundWaveTurn(); break;
        case 39:
        case 41: InitCatbatGroundWaveDelay();
        case 40: UpdateCatbatGroundWaveDelay(); break;
        default: SpriteUtilDie(); break;
    }
}
void SpriteCatbatLandingDebris(void)
{
    if (gCurrentSprite.pose == 0)
        InitCatbatLandingDebris();
    UpdateCatbatLandingDebris();
    func_8026838();
}
void SpriteCatbatDebrisParticle(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0)
        InitCatbatDebrisParticle();
    UpdateCatbatDebrisParticle();
}
void SpriteCatbatProjectile(void)
{
    gCurrentSprite.disableWarioCollisionTimer = 1;
    if (gCurrentSprite.pose == 0)
        InitCatbatProjectile();
    UpdateCatbatProjectile();
}
void SpriteCatbatAttackEffect(void)
{
    switch (gCurrentSprite.pose) {
        case 0:
            InitCatbatAttackEffect();
        case 16:
            UpdateCatbatAttackEffect();
            break;
        case 49:
            InitCatbatAttackEffectDespawn();
        case 50:
            UpdateCatbatAttackEffectDespawn();
            break;
        case 109:
            UpdateCatbatAttackEffectHit();
            break;
        default:
            UpdateCatbatAttackEffectDefault();
            break;
    }
}
