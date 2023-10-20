import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';

import 'oswrapper_audio.dart';

class OSWrapperUnderrunException implements Exception {
  final String message;

  OSWrapperUnderrunException(this.message);

  @override
  String toString() => "OSWrapperUnderrunException($message)";
}

class OsWrapperAudioDecoder implements Finalizable {
  static NativeFinalizer? _nativeFinalizer;
  static bool initialized = false;
  final OWAudio _ffi;
  final Pointer<OSWrapper_audio_spec> _spec;
  bool closed = false;
  OsWrapperAudioDecoder._(this._ffi, this._spec) {
    _nativeFinalizer ??=
        NativeFinalizer(_ffi.addresses.oswrapper_audio_free_context.cast());
  }

  factory OsWrapperAudioDecoder.fromPath(OWAudio ffi, String path) {
    if (!initialized) {
      ffi.oswrapper_audio_init();
      initialized = true;
    }
    return using((p0) {
      final spec = calloc.call<OSWrapper_audio_spec>();
      final pathPtr = path.toNativeUtf8(allocator: p0);
      final success = ffi.oswrapper_audio_load_from_path(pathPtr.cast(), spec);
      if (success) {
        final newDecoder = OsWrapperAudioDecoder._(ffi, spec);
        _nativeFinalizer?.attach(newDecoder, spec.cast(), detach: newDecoder);
        return newDecoder;
      } else {
        throw Exception('Failed to open the audio file!');
      }
    });
  }

  int get sampleSize => _spec.ref.bits_per_channel ~/ 8;

  int get sampleRate => _spec.ref.sample_rate;

  int get channelCount => _spec.ref.channel_count;

  int get formatType => _spec.ref.audio_type;

  int readFrames(Pointer<Uint8> buffer, int bufferSize, int framesToRead) {
    final frameSize = sampleSize * channelCount;
    final requiredBufferSize = frameSize * framesToRead;
    if (requiredBufferSize > bufferSize) {
      throw OSWrapperUnderrunException("Not enough space in the buffer!");
    }
    final framesRead =
        _ffi.oswrapper_audio_get_samples(_spec, buffer.cast(), framesToRead);
    return framesRead;
  }

  void seek(Duration t) {
    if (Platform.isWindows) {
      final hundredUSecOffset = t.inMicroseconds * 10;
      _ffi.oswrapper_audio_seek(_spec, hundredUSecOffset);
    } else if (Platform.isMacOS) {
      final sourcePCMFrameCount = (t.inSeconds * sampleRate);
      _ffi.oswrapper_audio_seek(_spec, sourcePCMFrameCount);
    }
  }

  void dispose() {
    if (!closed) {
      _ffi.oswrapper_audio_free_context(_spec);
      _nativeFinalizer?.detach(this);
      closed = true;
    }
  }
}
