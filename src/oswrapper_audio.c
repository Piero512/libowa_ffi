#define OSWRAPPER_AUDIO_IMPLEMENTATION
#ifdef WIN32
#define OSWRAPPER_AUDIO_DEF __declspec( dllexport )
#endif
#include <stdbool.h>
#define OSWRAPPER_AUDIO_RESULT_TYPE bool
#define OSWRAPPER_AUDIO_RESULT_SUCCESS true
#define OSWRAPPER_AUDIO_RESULT_FAILURE false

#include "oswrapper_audio.h"
