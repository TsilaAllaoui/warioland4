#ifndef SOUND_ROOM_H
#define SOUND_ROOM_H

#include "types.h"

s32 UpdateSoundRoomTransition(void);
void InitSoundRoomScreen(void);
void SoundRoomVBlank(void);
s32 UpdateSoundRoomMenu(void);
s32 SelectFirstUnlockedSoundRoomTrack(void);
s32 MoveSoundRoomSelection(void);
void UpdateSoundRoomAudioEffects(void);
void LoadSoundRoomTrackGraphics(s32 trackIndex);
void DrawSoundRoomSprites(void);
void LoadRandomSoundRoomPreview(void);

#endif /* SOUND_ROOM_H */
