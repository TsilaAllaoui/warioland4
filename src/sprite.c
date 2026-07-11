#include "sprite.h"

#include "sprite_ai/aerodent.h"
#include "sprite_ai/ball_lightning.h"
#include "sprite_ai/beezley.h"
#include "sprite_ai/boss_corridor_cat.h"
#include "sprite_ai/boss_door.h"
#include "sprite_ai/boss_treasure.h"
#include "sprite_ai/bow_balloon.h"
#include "sprite_ai/bowler.h"
#include "sprite_ai/bubble.h"
#include "sprite_ai/butatabi.h"
#include "sprite_ai/catbat.h"
#include "sprite_ai/caterpillar.h"
#include "sprite_ai/chance_wheel.h"
#include "sprite_ai/chandelier.h"
#include "sprite_ai/coins.h"
#include "sprite_ai/cractus.h"
#include "sprite_ai/crumbling_block.h"
#include "sprite_ai/cuckoo_condor.h"
#include "sprite_ai/deburina.h"
#include "sprite_ai/denden.h"
#include "sprite_ai/dice.h"
#include "sprite_ai/dice_block.h"
#include "sprite_ai/dominoes.h"
#include "sprite_ai/electric_lift.h"
#include "sprite_ai/falling_snow.h"
#include "sprite_ai/flying_carpet.h"
#include "sprite_ai/folding_door.h"
#include "sprite_ai/ghost.h"
#include "sprite_ai/glass_bird.h"
#include "sprite_ai/goggley_blade.h"
#include "sprite_ai/golden_diva.h"
#include "sprite_ai/hoggus.h"
#include "sprite_ai/icicle.h"
#include "sprite_ai/kaentsubo.h"
#include "sprite_ai/keyzer.h"
#include "sprite_ai/magma.h"
#include "sprite_ai/marumen.h"
#include "sprite_ai/mayubird.h"
#include "sprite_ai/menhanma.h"
#include "sprite_ai/menono.h"
#include "sprite_ai/minicula.h"
#include "sprite_ai/moguramen.h"
#include "sprite_ai/money_flower.h"
#include "sprite_ai/money_sunflower.h"
#include "sprite_ai/onomi.h"
#include "sprite_ai/pencil.h"
#include "sprite_ai/petbottom.h"
#include "sprite_ai/pig_head_statue.h"
#include "sprite_ai/pinball.h"
#include "sprite_ai/piston.h"
#include "sprite_ai/professor.h"
#include "sprite_ai/ringosuki.h"
#include "sprite_ai/robobird.h"
#include "sprite_ai/rock.h"
#include "sprite_ai/rotating_platform.h"
#include "sprite_ai/shieragutchi.h"
#include "sprite_ai/shopkeeper.h"
#include "sprite_ai/skeleton_bird.h"
#include "sprite_ai/spear_mask.h"
#include "sprite_ai/spike_cannon.h"
#include "sprite_ai/spiky.h"
#include "sprite_ai/spoiled_rotten.h"
#include "sprite_ai/sprite_a9.h"
#include "sprite_ai/swinging_platform.h"
#include "sprite_ai/switch.h"
#include "sprite_ai/tobawani.h"
#include "sprite_ai/togemasuku.h"
#include "sprite_ai/togenobi.h"
#include "sprite_ai/togerobo.h"
#include "sprite_ai/togetoge.h"
#include "sprite_ai/totsumen.h"
#include "sprite_ai/toy_block_round.h"
#include "sprite_ai/toy_block_square.h"
#include "sprite_ai/toy_block_triangle.h"
#include "sprite_ai/toy_car.h"
#include "sprite_ai/treasure.h"
#include "sprite_ai/utsuboanko.h"
#include "sprite_ai/vortex.h"
#include "sprite_ai/yeti.h"

ProcedureFunc sPrimarySpriteAITable[PSPRITE_COUNT] = {
    [PSPRITE_BOX_JEWEL_PIECE_NE] = SpriteBoxJewelPieceNE,
    [PSPRITE_BOX_JEWEL_PIECE_SE] = SpriteBoxJewelPieceSE,
    [PSPRITE_BOX_JEWEL_PIECE_SW] = SpriteBoxJewelPieceSW,
    [PSPRITE_BOX_JEWEL_PIECE_NW] = SpriteBoxJewelPieceNW,
    [PSPRITE_BOX_CD] = SpriteBoxCD,
    [PSPRITE_BOX_HEART_REFILL] = SpriteBoxHeartRefill,
    [PSPRITE_DIAMOND] = SpriteDiamond,
    [PSPRITE_SWITCH] = SpriteSwitch,
    [PSPRITE_KEYZER] = SpriteKeyzer,
    [PSPRITE_SHOPKEEPER] = SpriteShopkeeper,
    [PSPRITE_0A] = SpriteUnknown0A,
    [PSPRITE_0B] = SpriteUnknown0B,
    [PSPRITE_0C] = SpriteUnknown0C,
    [PSPRITE_LITTLE_HEART] = SpriteCoin,
    [PSPRITE_BOSS_TREASURE_CHEST] = SpriteBossTreasureChest,
    [PSPRITE_0F] = SpriteUnknown0F,
    [PSPRITE_10] = SpriteUnknown10,
    [PSPRITE_SPEAR_MASK_YELLOW] = SpriteSpearMask,
    [PSPRITE_SPEAR_MASK_BLUE] = SpriteSpearMask,
    [PSPRITE_SPEAR_MASK_RED] = SpriteSpearMask,
    [PSPRITE_ROTATING_PLATFORM] = SpriteRotatingPlatform,
    [PSPRITE_ROCK] = SpriteRock,
    [PSPRITE_SKELETON_BIRD] = SpriteSkeletonBird,
    [PSPRITE_KAENTSUBO] = SpriteKaentsubo,
    [PSPRITE_CUCKOO_CONDOR] = SpriteCuckooCondor,
    [PSPRITE_TOTSUMEN] = SpriteTotsumen,
    [PSPRITE_PIG_HEAD_STATUE] = SpritePigHeadStatue,
    [PSPRITE_MOGURAMEN] = SpriteMoguramen,
    [PSPRITE_SPIKY] = SpriteSpiky,
    [PSPRITE_SPIKY_Z] = SpriteSpiky,
    [PSPRITE_BUBBLE] = SpriteBubble,
    [PSPRITE_TOGEROBO] = SpriteTogerobo,
    [PSPRITE_FALLING_SNOW] = SpriteFallingSnow,
    [PSPRITE_TOGEMASUKU] = SpriteTogemasuku,
    [PSPRITE_BALL_LIGHTNING] = SpriteBallLightning,
    [PSPRITE_ELECTRIC_LIFT_STATIONARY] = SpriteElectricLiftStationary,
    [PSPRITE_ELECTRIC_LIFT_VERTICAL] = SpriteElectricLiftVertical,
    [PSPRITE_ELECTRIC_LIFT_HORIZONTAL] = SpriteElectricLiftHorizontal,
    [PSPRITE_MAGIC_CARPET] = SpriteMagicCarpet,
    [PSPRITE_BOW_BALLOON] = SpriteBowBalloon,
    [PSPRITE_CHANCE_WHEEL] = SpriteChanceWheel,
    [PSPRITE_VORTEX] = SpriteVortex,
    [PSPRITE_MARUMEN_PURPLE] = SpriteMarumen,
    [PSPRITE_MARUMEN_RED] = SpriteMarumen,
    [PSPRITE_SPOILED_ROTTEN] = SpriteSpoiledRotten,
    [PSPRITE_DOMINOES_2D] = SpriteDominoes2D,
    [PSPRITE_DOMINOES_2E] = SpriteDominoes2E,
    [PSPRITE_DOMINOES_2F] = SpriteDominoes2F,
    [PSPRITE_DOMINOES_30] = SpriteDominoes30,
    [PSPRITE_DOMINOES_31] = SpriteDominoes31,
    [PSPRITE_DOMINOES_32] = SpriteDominoes32,
    [PSPRITE_DOMINOES_33] = SpriteDominoes33,
    [PSPRITE_DOMINOES_34] = SpriteDominoes34,
    [PSPRITE_DOMINOES_35] = SpriteDominoes35,
    [PSPRITE_DOMINOES_36] = SpriteDominoes36,
    [PSPRITE_DOMINOES_37] = SpriteDominoes37,
    [PSPRITE_DOMINOES_38] = SpriteDominoes38,
    [PSPRITE_DOMINOES_39] = SpriteDominoes39,
    [PSPRITE_DOMINO_GOAL] = SpriteDominoGoal,
    [PSPRITE_DICE_BLOCK] = SpriteDiceBlock,
    [PSPRITE_MAYUBIRD] = SpriteMayubird,
    [PSPRITE_MINICULA] = SpriteMinicula,
    [PSPRITE_TOGETOGE] = SpriteTogetoge,
    [PSPRITE_GHOST] = SpriteGhost,
    [PSPRITE_BEEZLEY] = SpriteBeezley,
    [PSPRITE_MONEY_FLOWER] = SpriteMoneyFlower,
    [PSPRITE_CATERPILLAR] = SpriteCaterpillar,
    [PSPRITE_TOY_BLOCK_TRIANGLE] = SpriteToyBlockTriangle,
    [PSPRITE_TOY_BLOCK_TRIANGLE_LOCK] = SpriteToyBlockTriangleLock,
    [PSPRITE_TOY_BLOCK_SQUARE] = SpriteToyBlockSquare,
    [PSPRITE_TOY_BLOCK_ROUND] = SpriteToyBlockRound,
    [PSPRITE_TOY_BLOCK_TRIANGLE_DOOR] = SpriteToyBlockTriangleDoor,
    [PSPRITE_MENHANMA] = SpriteMenhanma,
    [PSPRITE_MENONO] = SpriteMenono,
    [PSPRITE_GOGGLEY_BLADE] = SpriteGoggleyBlade,
    [PSPRITE_GOGGLEY_BLADE_2] = SpriteGoggleyBlade,
    [PSPRITE_TOBAWANI] = SpriteTobawani,
    [PSPRITE_SHIERAGUTCHI] = SpriteShieragutchi,
    [PSPRITE_RINGOSUKI] = SpriteRingosuki,
    [PSPRITE_PISTON] = SpritePiston,
    [PSPRITE_PISTON_2] = SpritePiston,
    [PSPRITE_CATBAT] = SpriteCatbat,
    [PSPRITE_VORTEX_2] = SpriteVortex,
    [PSPRITE_SWINGING_PLATFORM] = SpriteSwingingPlatform,
    [PSPRITE_SWINGING_PLATFORM_2] = SpriteSwingingPlatform2,
    [PSPRITE_ROTATING_PLATFORM_2] = SpriteRotatingPlatform2,
    [PSPRITE_ROTATING_PLATFORM_3] = SpriteRotatingPlatform3,
    [PSPRITE_PINBALL] = SpritePinball,
    [PSPRITE_PINBALL_LOCK_UP] = SpritePinballLockUp,
    [PSPRITE_PINBALL_LOCK_DOWN] = SpritePinballLockDown,
    [PSPRITE_PINBALL_LOCK_LEFT] = SpritePinballLockLeft,
    [PSPRITE_PINBALL_LOCK_RIGHT] = SpritePinballLockRight,
    [PSPRITE_PINBALL_COUNTER] = SpritePinballCounter,
    [PSPRITE_GOAL_BLOCK] = SpriteChanceWheel,
    [PSPRITE_SPIKE_CANNON] = SpriteSpikeCannon,
    [PSPRITE_MONEY_SUNFLOWER] = SpriteMoneySunflower,
    [PSPRITE_YETI] = SpriteYeti,
    [PSPRITE_BOWLER] = SpriteBowler,
    [PSPRITE_MAGMA] = SpriteMagma,
    [PSPRITE_BOSS_DOOR_ENTRY_PASSAGE] = SpriteBossDoor,
    [PSPRITE_BOSS_DOOR_EMERALD_PASSAGE] = SpriteBossDoor,
    [PSPRITE_BOSS_DOOR_RUBY_PASSAGE] = SpriteBossDoor,
    [PSPRITE_BOSS_DOOR_TOPAZ_PASSAGE] = SpriteBossDoor,
    [PSPRITE_BOSS_DOOR_SAPPHIRE_PASSAGE] = SpriteBossDoor,
    [PSPRITE_BOSS_DOOR_GOLDEN_PYRAMID] = SpriteBossDoor,
    [PSPRITE_AERODENT] = SpriteAerodent,
    [PSPRITE_HOGGUS] = SpriteHoggus,
    [PSPRITE_DENDEN] = SpriteDenden,
    [PSPRITE_BUTATABI] = SpriteButatabi,
    [PSPRITE_DEBURINA] = SpriteDeburina,
    [PSPRITE_FOLDING_DOOR] = SpriteFoldingDoor,
    [PSPRITE_PENCIL_PURPLE] = SpritePencil,
    [PSPRITE_PENCIL_BLUE] = SpritePencil,
    [PSPRITE_PENCIl_RED] = SpritePencil,
    [PSPRITE_ROBOBIRD] = SpriteRobobird,
    [PSPRITE_UTSUBOANKO] = SpriteUtsuboanko,
    [PSPRITE_TOGENOBI] = SpriteTogenobi,
    [PSPRITE_ICICLE] = SpriteIcicle,
    [PSPRITE_CACTUS] = SpriteCractus,
    [PSPRITE_DICE] = SpriteDice,
    [PSPRITE_TOY_CAR] = SpriteToyCar,
    [PSPRITE_ONOMI] = SpriteOnomi,
    [PSPRITE_BOSS_CORRIDOR_CAT] = SpriteBossCorridorCat,
    [PSPRITE_PETBOTTOM] = SpritePetbottom,
    [PSPRITE_GLASS_BIRD] = SpriteGlassBird,
    [PSPRITE_GOLDEN_DIVA] = SpriteGoldenDiva,
    [PSPRITE_CHANDELIER] = SpriteChandelier,
    [PSPRITE_CRUMBLING_BLOCK] = SpriteCrumblingBlock,
    [PSPRITE_PROFESSOR] = SpriteProfessor,
    [PSPRITE_COIN_10POINTS] = SpriteCoin,
    [PSPRITE_COIN_50POINTS] = SpriteCoin,
    [PSPRITE_COIN_100POINTS] = SpriteCoin,
    [PSPRITE_COIN_500POINTS] = SpriteCoin,
    [PSPRITE_COIN_1000POINTS] = SpriteCoin,
    [PSPRITE_JEWEL_PIECE_NE] = SpriteJewelPieceNE,
    [PSPRITE_JEWEL_PIECE_SE] = SpriteJewelPieceSE,
    [PSPRITE_JEWEL_PIECE_SW] = SpriteJewelPieceSW,
    [PSPRITE_JEWEL_PIECE_NW] = SpriteJewelPieceNW,
    [PSPRITE_CD] = SpriteCD,
    [PSPRITE_HEART_REFILL] = SpriteHeartRefill,
    [PSPRITE_GLOW_JEWEL_PIECE_NE] = SpriteTreasureGlowJewelPieceNE,
    [PSPRITE_GLOW_JEWEL_PIECE_SE] = SpriteTreasureGlowJewelPieceSE,
    [PSPRITE_GLOW_JEWEL_PIECE_SW] = SpriteTreasureGlowJewelPieceSW,
    [PSPRITE_GLOW_JEWEL_PIECE_NW] = SpriteTreasureGlowJewelPieceNW,
    [PSPRITE_GLOW_CD] = SpriteTreasureGlowCD,
    [PSPRITE_GLOW_HEART_REFILL] = SpriteTreasureGlowHeartRefill,
    [PSPRITE_92] = SpriteUnknown92,
    [PSPRITE_93] = SpriteUnknown93,
    [PSPRITE_94] = SpriteUnknown94,
    [PSPRITE_95] = SpriteUnknown95,
    [PSPRITE_96] = SpriteUnknown96,
    [PSPRITE_97] = SpriteUnknown97,
    [PSPRITE_98] = SpriteUnknown98,
    [PSPRITE_99] = SpriteUnknown99,
    [PSPRITE_9A] = SpriteUnknown9A,
    [PSPRITE_9B] = SpriteUnknown9B,
    [PSPRITE_9C] = SpriteUnknown9C,
    [PSPRITE_9D] = SpriteUnknown9D,
    [PSPRITE_9E] = SpriteUnknown9E,
    [PSPRITE_9F] = SpriteUnknown9F,
    [PSPRITE_A0] = SpriteUnknownA0,
    [PSPRITE_A1] = SpriteUnknownA1,
    [PSPRITE_A2] = SpriteUnknownA2,
    [PSPRITE_VORTEX_PART_LARGE] = SpriteVortexPartLarge,
    [PSPRITE_VORTEX_PART_LARGE_2] = SpriteVortexPartLarge,
    [PSPRITE_VORTEX_PART_MEDIUM] = SpriteVortexPartMedium,
    [PSPRITE_VORTEX_PART_MEDIUM_2] = SpriteVortexPartMedium,
    [PSPRITE_A7] = SpriteUnknownA7,
    [PSPRITE_A8] = SpriteUnknownA8,
    [PSPRITE_A9] = SpriteUnknownA9,
    [PSPRITE_AA] = SpriteSwitchEffect,
    [PSPRITE_AB] = SpriteUnknownAB,
    [PSPRITE_AC] = SpriteUnknownAC,
    [PSPRITE_AD] = SpriteUnknownAD,
    [PSPRITE_AE] = SpriteUnknownAE,
    [PSPRITE_AF] = SpriteUnknownAF,
    [PSPRITE_B0] = SpriteUnknownB0,
    [PSPRITE_B1] = SpriteUnknownB1,
    [PSPRITE_B2] = SpriteUnknownB2,
    [PSPRITE_WARIO_EXITING_VORTEX] = SpriteWarioExitingVortex,
    [PSPRITE_WARIO_ENTERING_VORTEX] = SpriteWarioEnteringVortex,
    [PSPRITE_B5] = SpriteUnknownB5,
    [PSPRITE_B6] = SpriteUnknownB6,
    [PSPRITE_CHANCE_WHEEL_DIAMOND] = SpriteChanceWheelDiamond,
    [PSPRITE_B8] = SpriteUnknownB8,
    [PSPRITE_B9] = SpriteUnknownB9,
    [PSPRITE_BA] = SpriteUnknownBA,
    [PSPRITE_BB] = SpriteUnknownBB,
    [PSPRITE_ITEM_APPLE] = SpriteApple,
    [PSPRITE_BD] = SpriteUnknownBD,
    [PSPRITE_ITEM_BLAST_CANNON] = SpriteBlastCannon,
    [PSPRITE_ITEM_VIZORMAN] = SpriteVizorman,
    [PSPRITE_ITEM_BUGLE] = SpriteBugle,
    [PSPRITE_C1] = SpriteUnknownC1,
    [PSPRITE_C2] = SpriteUnknownC2,
    [PSPRITE_C3] = SpriteUnknownC3,
    [PSPRITE_C4] = SpriteUnknownC4,
    [PSPRITE_C5] = SpriteUnknownC5,
    [PSPRITE_C6] = SpriteUnknownC6,
    [PSPRITE_C7] = SpriteUnknownC7,
    [PSPRITE_C8] = SpriteUnknownC8,
    [PSPRITE_C9] = SpriteUnknownC9,
    [PSPRITE_CA] = SpriteUnknownCA,
    [PSPRITE_CB] = SpriteUnknownCB,
    [PSPRITE_CC] = SpriteUnknownCC,
    [PSPRITE_0xCD] = SpriteUnknownCD,
    [PSPRITE_CE] = SpriteUnknownCE,
    [PSPRITE_CF] = SpriteUnknownCF,
    [PSPRITE_D0] = SpriteUnknownD0,
    [PSPRITE_D1] = SpriteUnknownD1,
    [PSPRITE_D2] = SpriteUnknownD2,
    [PSPRITE_KEYZER_ENTERING_VORTEX] = SpriteKeyzerEnteringVortex,
    [PSPRITE_D4] = SpriteUnknownD4,
    [PSPRITE_D5] = SpriteUnknownD5,
    [PSPRITE_D6] = SpriteUnknownD6,
    [PSPRITE_D7] = SpriteUnknownD7,
    [PSPRITE_D8] = SpriteUnknownD8,
    [PSPRITE_D9] = SpriteUnknownD9,
    [PSPRITE_DA] = SpriteUnknownDA,
    [PSPRITE_DB] = SpriteUnknownDB,
    [PSPRITE_DC] = SpriteUnknownDB,
    [PSPRITE_DD] = SpriteUnknownDD,
    [PSPRITE_DE] = SpriteUnknownDE,
    [PSPRITE_DF] = SpriteUnknownDF,
    [PSPRITE_E0] = SpriteUnknownE0,
    [PSPRITE_E1] = SpriteUnknownE1,
    [PSPRITE_E2] = SpriteUnknownE2,
    [PSPRITE_E3] = SpriteUnknownE3,
    [PSPRITE_E4] = SpriteUnknownE4,
    [PSPRITE_E5] = SpriteUnknownE5,
    [PSPRITE_E6] = SpriteUnknownE6,
    [PSPRITE_E7] = SpriteUnknownE7,
    [PSPRITE_E8] = SpriteUnknownE8,
    [PSPRITE_E9] = SpriteUnknownE9,
    [PSPRITE_EA] = SpriteUnknownEA,
    [PSPRITE_EB] = SpriteUnknownEB,
    [PSPRITE_EC] = SpriteUnknownEC,
    [PSPRITE_ED] = SpriteUnknownED,
    [PSPRITE_EE] = SpriteUnknownEE,
    [PSPRITE_EF] = SpriteUnknownEF,
    [PSPRITE_F0] = SpriteUnknownF0,
    [PSPRITE_F1] = SpriteUnknownF1,
    [PSPRITE_F2] = SpriteUnknownF2,
    [PSPRITE_F3] = SpriteUnknownF3,
    [PSPRITE_F4] = SpriteUnknownF4,
    [PSPRITE_F5] = SpriteUnknownF5,
    [PSPRITE_F6] = SpriteUnknownF6,
    [PSPRITE_F7] = SpriteUnknownF7,
    [PSPRITE_F8] = SpriteUnknownF8,
    [PSPRITE_F9] = SpriteUnknownF9,
    [PSPRITE_FA] = SpriteUnknownFA,
    [PSPRITE_FB] = SpriteUnknownFB,
};
