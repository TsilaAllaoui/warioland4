#include "hud.h"

#include "global_data.h"
#include "main.h"
#include "sprite.h"

extern const u8 sBossLife20Gfx[];
extern const u8 sBossLife19Gfx[];
extern const u8 sBossLife18Gfx[];
extern const u8 sBossLife17Gfx[];
extern const u8 sBossLife16Gfx[];
extern const u8 sBossLife15Gfx[];
extern const u8 sBossLife14Gfx[];
extern const u8 sBossLife13Gfx[];
extern const u8 sBossLife12Gfx[];
extern const u8 sBossLife11Gfx[];
extern const u8 sBossLife10Gfx[];
extern const u8 sBossLife9Gfx[];
extern const u8 sBossLife8Gfx[];
extern const u8 sBossLife7Gfx[];
extern const u8 sBossLife6Gfx[];
extern const u8 sBossLife5Gfx[];
extern const u8 sBossLife4Gfx[];
extern const u8 sBossLife3Gfx[];
extern const u8 sBossLife2Gfx[];
extern const u8 sBossLife1Gfx[];
extern const u8 sBossLife0Gfx[];

const u16 sCommonSpritesPal[] = {
#include "data/common_sprites.pal.inc"
};
const u8 sCommonSpritesGfx[] = {
#include "data/common_sprites.4bpp.inc"
};

const u8 sScoreDigitsGfx[] = {
#include "data/hud/score_digits.4bpp.inc"
};

const u8 sTimeDigitsUpperGfx[] = {
#include "data/hud/time_digits_upper.4bpp.inc"
};
const u8 sTimeColonUpperGfx[] = {
#include "data/hud/time_colon_upper.4bpp.inc"
};
const u8 sTimeColonEmptyUpperGfx[] = {
#include "data/hud/time_colon_empty_upper.4bpp.inc"
};
const u8 sTimeDigitsLowerGfx[] = {
#include "data/hud/time_digits_lower.4bpp.inc"
};
const u8 sTimeColonLowerGfx[] = {
#include "data/hud/time_colon_lower.4bpp.inc"
};
const u8 sTimeColonEmptyLowerGfx[] = {
#include "data/hud/time_colon_empty_lower.4bpp.inc"
};

const u8 sTimeDigitsYellowUpperGfx[] = {
#include "data/hud/time_digits_yellow_upper.4bpp.inc"
};
const u8 sTimeColonYellowUpperGfx[] = {
#include "data/hud/time_colon_yellow_upper.4bpp.inc"
};
const u8 sTimeColonEmptyYellowUpperGfx[] = {
#include "data/hud/time_colon_empty_yellow_upper.4bpp.inc"
};
const u8 sTimeDigitsYellowLowerGfx[] = {
#include "data/hud/time_digits_yellow_lower.4bpp.inc"
};
const u8 sTimeColonYellowLowerGfx[] = {
#include "data/hud/time_colon_yellow_lower.4bpp.inc"
};
const u8 sTimeColonEmptyYellowLowerGfx[] = {
#include "data/hud/time_colon_empty_yellow_lower.4bpp.inc"
};

const u8 sTimeDigitsRedUpperGfx[] = {
#include "data/hud/time_digits_red_upper.4bpp.inc"
};
const u8 sTimeColonRedUpperGfx[] = {
#include "data/hud/time_colon_red_upper.4bpp.inc"
};
const u8 sTimeColonEmptyRedUpperGfx[] = {
#include "data/hud/time_colon_empty_red_upper.4bpp.inc"
};
const u8 sTimeDigitsRedLowerGfx[] = {
#include "data/hud/time_digits_red_lower.4bpp.inc"
};
const u8 sTimeColonRedLowerGfx[] = {
#include "data/hud/time_colon_red_lower.4bpp.inc"
};
const u8 sTimeColonEmptyRedLowerGfx[] = {
#include "data/hud/time_colon_empty_red_lower.4bpp.inc"
};

const u8 sJewelPieceIconPartialNEGfx[] = {
#include "data/hud/jewel_piece_icon_partial_ne.4bpp.inc"
};
const u8 sJewelPieceIconPartialSEGfx[] = {
#include "data/hud/jewel_piece_icon_partial_se.4bpp.inc"
};
const u8 sJewelPieceIconPartialSWGfx[] = {
#include "data/hud/jewel_piece_icon_partial_sw.4bpp.inc"
};
const u8 sJewelPieceIconPartialNWGfx[] = {
#include "data/hud/jewel_piece_icon_partial_nw.4bpp.inc"
};
const u8 sJewelPieceIconNEGfx[] = {
#include "data/hud/jewel_piece_icon_ne.4bpp.inc"
};
const u8 sJewelPieceIconSEGfx[] = {
#include "data/hud/jewel_piece_icon_se.4bpp.inc"
};
const u8 sJewelPieceIconSWGfx[] = {
#include "data/hud/jewel_piece_icon_sw.4bpp.inc"
};
const u8 sJewelPieceIconNWGfx[] = {
#include "data/hud/jewel_piece_icon_nw.4bpp.inc"
};
const u8 sCDIconPartialGfx[] = {
#include "data/hud/cd_icon.4bpp.inc"
};
const u8 sCDIconGfx[] = {
#include "data/hud/cd_icon.4bpp.inc"
};

const u8 sTimeUpGfx[] = {
#include "data/hud/time_up.4bpp.inc"
};

// clang-format off
const u8 sHeartMeterEmptyGfx[] = {
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter1HeartGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter2HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter3HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter4HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter5HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter6HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter7HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
const u8 sHeartMeter8HeartsGfx[] = {
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
#include "data/hud/heart_meter_heart_filled.4bpp.inc"
};
const u8 sHeartMeter1HeartFlashingGfx[] = {
#include "data/hud/heart_meter_heart_flashing.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
#include "data/hud/heart_meter_heart_empty.4bpp.inc"
};
// clang-format on

const u8 sHeartGaugeEmptyGfx[] = {
#include "data/hud/heart_gauge_empty.4bpp.inc"
};
const u8 sHeartGaugeFill1Gfx[] = {
#include "data/hud/heart_gauge_fill_1.4bpp.inc"
};
const u8 sHeartGaugeFill2Gfx[] = {
#include "data/hud/heart_gauge_fill_2.4bpp.inc"
};
const u8 sHeartGaugeFill3Gfx[] = {
#include "data/hud/heart_gauge_fill_3.4bpp.inc"
};
const u8 sHeartGaugeFill4Gfx[] = {
#include "data/hud/heart_gauge_fill_4.4bpp.inc"
};
const u8 sHeartGaugeFill5Gfx[] = {
#include "data/hud/heart_gauge_fill_5.4bpp.inc"
};
const u8 sHeartGaugeFill6Gfx[] = {
#include "data/hud/heart_gauge_fill_6.4bpp.inc"
};
const u8 sHeartGaugeFill7Gfx[] = {
#include "data/hud/heart_gauge_fill_7.4bpp.inc"
};
const u8 sHeartGaugeFullGfx[] = {
#include "data/hud/heart_gauge_full.4bpp.inc"
};

const u8 sBossStageSpritesGfx[] = {
#include "data/boss_stage_sprites.4bpp.inc"
};

const u8 sAppleBombGfx[] = {
#include "data/sprites/apple_bomb.4bpp.inc"
};
const u8 sBlastCannonGfx[] = {
#include "data/sprites/blast_cannon.4bpp.inc"
};
const u8 sVizormanGfx[] = {
#include "data/sprites/vizorman.4bpp.inc"
};
const u8 sBugleGfx[] = {
#include "data/sprites/bugle.4bpp.inc"
};
const u8 sBlackDogGfx[] = {
#include "data/sprites/black_dog.4bpp.inc"
};
const u8 sLargeLipsGfx[] = {
#include "data/sprites/large_lips.4bpp.inc"
};
const u8 sBigFistGfx[] = {
#include "data/sprites/big_fist.4bpp.inc"
};
const u8 sBlackDragonGfx[] = {
#include "data/sprites/black_dragon.4bpp.inc"
};

const u16 sTimeUpTextPal[] = {
#include "data/hud/time_up_text.pal.inc"
};
const u16 sTimeUpWarioPal[] = {
#include "data/hud/time_up_wario.pal.inc"
};

const u8* sBossLifeMeterGfx[] = {
    sBossLife0Gfx,  sBossLife1Gfx,  sBossLife2Gfx,  sBossLife3Gfx,  sBossLife4Gfx,  sBossLife5Gfx,  sBossLife6Gfx,
    sBossLife7Gfx,  sBossLife8Gfx,  sBossLife9Gfx,  sBossLife10Gfx, sBossLife11Gfx, sBossLife12Gfx, sBossLife13Gfx,
    sBossLife14Gfx, sBossLife15Gfx, sBossLife16Gfx, sBossLife17Gfx, sBossLife18Gfx, sBossLife19Gfx, sBossLife20Gfx,
};
const u8* sHeartGaugeGfx[] = {
    sHeartGaugeEmptyGfx,
    sHeartGaugeFill1Gfx,
    sHeartGaugeFill2Gfx,
    sHeartGaugeFill3Gfx,
    sHeartGaugeFill4Gfx,
    sHeartGaugeFill5Gfx,
    sHeartGaugeFill6Gfx,
    sHeartGaugeFill7Gfx,
    sHeartGaugeFullGfx,
};
const u8* sHeartMeterGfx[] = {
    sHeartMeterEmptyGfx,
    sHeartMeter1HeartGfx,
    sHeartMeter2HeartsGfx,
    sHeartMeter3HeartsGfx,
    sHeartMeter4HeartsGfx,
    sHeartMeter5HeartsGfx,
    sHeartMeter6HeartsGfx,
    sHeartMeter7HeartsGfx,
    sHeartMeter8HeartsGfx,
    sHeartMeter1HeartFlashingGfx,
};

void func_80746C0(void)
{
    DmaCopy16(3, sCommonSpritesGfx, 0x6011000, sizeof(sCommonSpritesGfx));

    if (gCurrentStageNumber != STAGE_BOSS) {
        return;
    }

    DmaCopy16(3, sBossStageSpritesGfx, 0x6012400, sizeof(sBossStageSpritesGfx));

    switch (gCurrentShopItem) {
        case SHOP_ITEM_APPLE_BOMB:
            DmaCopy16(3, sAppleBombGfx, 0x6013000, sizeof(sAppleBombGfx));
            break;
        case SHOP_ITEM_BLAST_CANNON:
            DmaCopy16(3, sBlastCannonGfx, 0x6013000, sizeof(sBlastCannonGfx));
            break;
        case SHOP_ITEM_VIZORMAN:
            DmaCopy16(3, sVizormanGfx, 0x6013000, sizeof(sVizormanGfx));
            break;
        case SHOP_ITEM_BUGLE:
            DmaCopy16(3, sBugleGfx, 0x6013000, sizeof(sBugleGfx));
            break;
        case SHOP_ITEM_BLACK_DOG:
            DmaCopy16(3, sBlackDogGfx, 0x6013000, sizeof(sBlackDogGfx));
            break;
        case SHOP_ITEM_LARGE_LIPS:
            DmaCopy16(3, sLargeLipsGfx, 0x6013000, sizeof(sLargeLipsGfx));
            break;
        case SHOP_ITEM_BIG_FIST:
            DmaCopy16(3, sBigFistGfx, 0x6013000, sizeof(sBigFistGfx));
            break;
        case SHOP_ITEM_BLACK_DRAGON:
            DmaCopy16(3, sBlackDragonGfx, 0x6013000, sizeof(sBlackDragonGfx));
            break;
    }
}

void UpdateBossHealthGauge(void)
{
    u8 health;

    health = gCurrentSprite.health;
    DmaCopy16(3, sBossLifeMeterGfx[health], 0x6012C00, 10 * TILE_SIZE_4BPP);
}
