/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license ( the "Software" ) to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.openal.functions;

private import derelict.openal.types;

extern( C ) nothrow {
    alias da_alEnable = void function( ALenum );
    alias da_alDisable = void function( ALenum );
    alias da_alIsEnabled = ALboolean function( ALenum );

    alias da_alGetString = const( ALchar )* function( ALenum );
    alias da_alGetBooleanv = void function( ALenum, ALboolean* );
    alias da_alGetIntegerv = void function( ALenum, ALint* );
    alias da_alGetFloatv = void function( ALenum, ALfloat* );
    alias da_alGetDoublev = void function( ALenum, ALdouble* );
    alias da_alGetBoolean = ALboolean function( ALenum );
    alias da_alGetInteger = ALint function( ALenum );
    alias da_alGetFloat = ALfloat function( ALenum );
    alias da_alGetDouble = ALdouble function( ALenum );
    alias da_alGetError = ALenum function();

    alias da_alIsExtensionPresent = ALboolean function( const( char )* );
    alias da_alGetProcAddress = ALvoid* function( const( char )* );
    alias da_alGetEnumValue = ALenum function( const( char )* );

    alias da_alListenerf = void function( ALenum, ALfloat );
    alias da_alListener3f = void function( ALenum, ALfloat, ALfloat, ALfloat );
    alias da_alListenerfv = void function( ALenum, const( ALfloat )* );
    alias da_alListeneri = void function( ALenum, ALint );
    alias da_alListener3i = void function( ALenum, ALint, ALint, ALint );
    alias da_alListeneriv = void function( ALenum, const( ALint )* );

    alias da_alGetListenerf = void function( ALenum, ALfloat* );
    alias da_alGetListener3f = void function( ALenum, ALfloat*, ALfloat*, ALfloat* );
    alias da_alGetListenerfv = void function( ALenum, ALfloat* );
    alias da_alGetListeneri = void function( ALenum, ALint* );
    alias da_alGetListener3i = void function( ALenum, ALint*, ALint*, ALint* );
    alias da_alGetListeneriv = void function( ALenum, ALint* );

    alias da_alGenSources = void function( ALsizei, ALuint* );
    alias da_alDeleteSources = void function( ALsizei, const( ALuint )* );
    alias da_alIsSource = ALboolean function( ALuint );

    alias da_alSourcef = void function( ALuint, ALenum, ALfloat );
    alias da_alSource3f = void function( ALuint, ALenum, ALfloat, ALfloat, ALfloat );
    alias da_alSourcefv = void function( ALuint, ALenum, const( ALfloat )* );
    alias da_alSourcei = void function( ALuint, ALenum, ALint );
    alias da_alSource3i = void function( ALuint, ALenum, ALint, ALint, ALint );
    alias da_alSourceiv = void function( ALuint, ALenum, const( ALint )* );

    alias da_alGetSourcef = void function( ALuint, ALenum, ALfloat* );
    alias da_alGetSource3f = void function( ALuint, ALenum, ALfloat*, ALfloat*, ALfloat* );
    alias da_alGetSourcefv = void function( ALuint, ALenum, ALfloat* );
    alias da_alGetSourcei = void function( ALuint, ALenum, ALint* );
    alias da_alGetSource3i = void function( ALuint, ALenum, ALint*, ALint*, ALint* );
    alias da_alGetSourceiv = void function( ALuint, ALenum, ALint* );

    alias da_alSourcePlayv = void function( ALsizei, const( ALuint )* );
    alias da_alSourceStopv = void function( ALsizei, const( ALuint )* );
    alias da_alSourceRewindv = void function( ALsizei, const( ALuint )* );
    alias da_alSourcePausev = void function( ALsizei, const( ALuint )* );
    alias da_alSourcePlay = void function( ALuint );
    alias da_alSourcePause = void function( ALuint );
    alias da_alSourceRewind = void function( ALuint );
    alias da_alSourceStop = void function( ALuint );

    alias da_alSourceQueueBuffers = void function( ALuint, ALsizei, ALuint* );
    alias da_alSourceUnqueueBuffers = void function( ALuint, ALsizei, ALuint* );

    alias da_alGenBuffers = void function( ALsizei, ALuint* );
    alias da_alDeleteBuffers = void function( ALsizei, const( ALuint )* );
    alias da_alIsBuffer = ALboolean function( ALuint );
    alias da_alBufferData = void function( ALuint, ALenum, const( ALvoid )*, ALsizei, ALsizei );

    alias da_alBufferf = void function( ALuint, ALenum, ALfloat );
    alias da_alBuffer3f = void function( ALuint, ALenum, ALfloat, ALfloat, ALfloat );
    alias da_alBufferfv = void function( ALuint, ALenum, const( ALfloat )* );
    alias da_alBufferi = void function( ALuint, ALenum, ALint );
    alias da_alBuffer3i = void function( ALuint, ALenum, ALint, ALint, ALint );
    alias da_alBufferiv = void function( ALuint, ALenum, const( ALint )* );

    alias da_alGetBufferf = void function( ALuint, ALenum, ALfloat* );
    alias da_alGetBuffer3f = void function( ALuint, ALenum, ALfloat*, ALfloat*, ALfloat* );
    alias da_alGetBufferfv = void function( ALuint, ALenum, ALfloat* );
    alias da_alGetBufferi = void function( ALuint, ALenum, ALint* );
    alias da_alGetBuffer3i = void function( ALuint, ALenum, ALint*, ALint*, ALint* );
    alias da_alGetBufferiv = void function( ALuint, ALenum, ALint* );

    alias da_alDopplerFactor = void function( ALfloat );
    alias da_alDopplerVelocity = void function( ALfloat );
    alias da_alSpeedOfSound = void function( ALfloat );
    alias da_alDistanceModel = void function( ALenum );

    alias da_alcCreateContext = ALCcontext* function( ALCdevice*, const( ALCint )* );
    alias da_alcMakeContextCurrent = ALCboolean function( ALCcontext* );
    alias da_alcProcessContext = void function( ALCcontext* );
    alias da_alcSuspendContext = void function( ALCcontext* );
    alias da_alcDestroyContext = void function( ALCcontext* );
    alias da_alcGetCurrentContext = ALCcontext* function();
    alias da_alcGetContextsDevice = ALCdevice* function( ALCcontext* );
    alias da_alcOpenDevice = ALCdevice* function( const( char )* );
    alias da_alcCloseDevice = ALCboolean function( ALCdevice* );
    alias da_alcGetError = ALCenum function( ALCdevice* );
    alias da_alcIsExtensionPresent = ALCboolean function( ALCdevice*, const( char )* );
    alias da_alcGetProcAddress = void* function( ALCdevice*, const( char )* );
    alias da_alcGetEnumValue = ALCenum function( ALCdevice*, const( char )* );
    alias da_alcGetString = const( char )* function( ALCdevice*, ALCenum );
    alias da_alcGetIntegerv = void function( ALCdevice*, ALCenum, ALCsizei, ALCint* );
    alias da_alcCaptureOpenDevice = ALCdevice* function( const( char )*, ALCuint, ALCenum, ALCsizei );
    alias da_alcCaptureCloseDevice = ALCboolean function( ALCdevice* );
    alias da_alcCaptureStart = void function( ALCdevice* );
    alias da_alcCaptureStop = void function( ALCdevice* );
    alias da_alcCaptureSamples = void function( ALCdevice*, ALCvoid*, ALCsizei );
}

__gshared {
    da_alEnable alEnable;
    da_alDisable alDisable;
    da_alIsEnabled alIsEnabled;

    da_alGetString alGetString;
    da_alGetBooleanv alGetBooleanv;
    da_alGetIntegerv alGetIntegerv;
    da_alGetFloatv alGetFloatv;
    da_alGetDoublev alGetDoublev;
    da_alGetBoolean alGetBoolean;
    da_alGetInteger alGetInteger;
    da_alGetFloat alGetFloat;
    da_alGetDouble alGetDouble;
    da_alGetError alGetError;

    da_alIsExtensionPresent alIsExtensionPresent;
    da_alGetProcAddress alGetProcAddress;
    da_alGetEnumValue alGetEnumValue;

    da_alListenerf alListenerf;
    da_alListener3f alListener3f;
    da_alListenerfv alListenerfv;
    da_alListeneri alListeneri;
    da_alListener3i alListener3i;
    da_alListeneriv alListeneriv;

    da_alGetListenerf alGetListenerf;
    da_alGetListener3f alGetListener3f;
    da_alGetListenerfv alGetListenerfv;
    da_alGetListeneri alGetListeneri;
    da_alGetListener3i alGetListener3i;
    da_alGetListeneriv alGetListeneriv;

    da_alGenSources alGenSources;
    da_alDeleteSources alDeleteSources;
    da_alIsSource alIsSource;

    da_alSourcef alSourcef;
    da_alSource3f alSource3f;
    da_alSourcefv alSourcefv;
    da_alSourcei alSourcei;
    da_alSource3i alSource3i;
    da_alSourceiv alSourceiv;


    da_alGetSourcef alGetSourcef;
    da_alGetSource3f alGetSource3f;
    da_alGetSourcefv alGetSourcefv;
    da_alGetSourcei alGetSourcei;
    da_alGetSource3i alGetSource3i;
    da_alGetSourceiv alGetSourceiv;

    da_alSourcePlayv alSourcePlayv;
    da_alSourceStopv alSourceStopv;
    da_alSourceRewindv alSourceRewindv;
    da_alSourcePausev alSourcePausev;
    da_alSourcePlay alSourcePlay;
    da_alSourcePause alSourcePause;
    da_alSourceRewind alSourceRewind;
    da_alSourceStop alSourceStop;

    da_alSourceQueueBuffers alSourceQueueBuffers;
    da_alSourceUnqueueBuffers alSourceUnqueueBuffers;

    da_alGenBuffers alGenBuffers;
    da_alDeleteBuffers alDeleteBuffers;
    da_alIsBuffer alIsBuffer;
    da_alBufferData alBufferData;

    da_alBufferf alBufferf;
    da_alBuffer3f alBuffer3f;
    da_alBufferfv alBufferfv;
    da_alBufferi alBufferi;
    da_alBuffer3i alBuffer3i;
    da_alBufferiv alBufferiv;
    da_alGetBufferf alGetBufferf;
    da_alGetBuffer3f alGetBuffer3f;
    da_alGetBufferfv alGetBufferfv;
    da_alGetBufferi alGetBufferi;
    da_alGetBuffer3i alGetBuffer3i;
    da_alGetBufferiv alGetBufferiv;

    da_alDopplerFactor alDopplerFactor;
    da_alDopplerVelocity alDopplerVelocity;
    da_alSpeedOfSound alSpeedOfSound;
    da_alDistanceModel alDistanceModel;

    da_alcCreateContext alcCreateContext;
    da_alcMakeContextCurrent alcMakeContextCurrent;
    da_alcProcessContext alcProcessContext;
    da_alcSuspendContext alcSuspendContext;
    da_alcDestroyContext alcDestroyContext;
    da_alcGetCurrentContext alcGetCurrentContext;
    da_alcGetContextsDevice alcGetContextsDevice;
    da_alcOpenDevice alcOpenDevice;
    da_alcCloseDevice alcCloseDevice;
    da_alcGetError alcGetError;
    da_alcIsExtensionPresent alcIsExtensionPresent;
    da_alcGetProcAddress alcGetProcAddress;
    da_alcGetEnumValue alcGetEnumValue;
    da_alcGetString alcGetString;
    da_alcGetIntegerv alcGetIntegerv;
    da_alcCaptureOpenDevice alcCaptureOpenDevice;
    da_alcCaptureCloseDevice alcCaptureCloseDevice;
    da_alcCaptureStart alcCaptureStart;
    da_alcCaptureStop alcCaptureStop;
    da_alcCaptureSamples alcCaptureSamples;
}