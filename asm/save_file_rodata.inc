.section .rodata

.global sBackupSramTestSignature
sBackupSramTestSignature:
	.ascii "Wari4_AGB_BackUp"

.global sSaveFooterSignature
sSaveFooterSignature:
	.ascii "SAVE_END"

.global sMainSaveHeaderSignature1
sMainSaveHeaderSignature1:
	.ascii "AutoSAVEWar4key1"

.global sMainSaveHeaderSignature2
sMainSaveHeaderSignature2:
	.ascii "key2AutoSAVEWar4"

.global sTemporarySaveHeaderSignature1
sTemporarySaveHeaderSignature1:
	.ascii "DisContinueKey1b"

.global sTemporarySaveHeaderSignature2
sTemporarySaveHeaderSignature2:
	.ascii "DisContinue2bKey"

.global sUsTitleSaveVersionString
sUsTitleSaveVersionString:
	.ascii "AGBWarioLand-USver00"

.global sJpTitleSaveVersionString
sJpTitleSaveVersionString:
	.ascii "WARIOLANDNIPPONVer00"

.global sPrimarySaveHeaderBuffers
sPrimarySaveHeaderBuffers:
	.4byte 0x2038100, 0x2038500

.global sSecondarySaveHeaderBuffers
sSecondarySaveHeaderBuffers:
	.4byte 0x2038300, 0x2038700

.global sMainSaveDataBuffers
sMainSaveDataBuffers:
	.4byte 0x2039000, 0x203C800

.global sStageSelectionSaveBuffers
sStageSelectionSaveBuffers:
	.4byte 0x20382E0, 0x20386E0

.global sSaveSlotValidationSignatures
sSaveSlotValidationSignatures:
	.ascii "WAR4SAVEA", "BSAVEWAR4"

.align 2, 0

.global sStageSelectionSaveSignature
sStageSelectionSaveSignature:
	.ascii "WARABGSELECTSAVE"

.global sPassageNameValidationStrings
sPassageNameValidationStrings:
	.ascii " FIRST  ", "  GREEN ", "   RED  ", " YELLOW ", "    BLUE", " GOLDEN "

.global sStageNameValidationStrings
sStageNameValidationStrings:
	.ascii "StAGe000", "01sTAgEn", "WarioSt2", "AgbWar03", "STe4boSS", "MinIGaMe", "sElecTWn"
