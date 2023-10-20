// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings to OSWrapper Audio, a lib that uses the system codecs to decode audio
class OWAudio {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  OWAudio(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  OWAudio.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Call oswrapper_audio_init() before using the library,
  /// and call oswrapper_audio_uninit() after you're done using the library.
  bool oswrapper_audio_init() {
    return _oswrapper_audio_init();
  }

  late final _oswrapper_audio_initPtr =
      _lookup<ffi.NativeFunction<ffi.Bool Function()>>('oswrapper_audio_init');
  late final _oswrapper_audio_init =
      _oswrapper_audio_initPtr.asFunction<bool Function()>();

  bool oswrapper_audio_uninit() {
    return _oswrapper_audio_uninit();
  }

  late final _oswrapper_audio_uninitPtr =
      _lookup<ffi.NativeFunction<ffi.Bool Function()>>(
          'oswrapper_audio_uninit');
  late final _oswrapper_audio_uninit =
      _oswrapper_audio_uninitPtr.asFunction<bool Function()>();

  /// Free resources associated with the given OSWrapper_audio_spec.
  /// Returns 1 on success, or 0 on failure.
  bool oswrapper_audio_free_context(
    ffi.Pointer<OSWrapper_audio_spec> audio,
  ) {
    return _oswrapper_audio_free_context(
      audio,
    );
  }

  late final _oswrapper_audio_free_contextPtr = _lookup<
          ffi.NativeFunction<
              ffi.Bool Function(ffi.Pointer<OSWrapper_audio_spec>)>>(
      'oswrapper_audio_free_context');
  late final _oswrapper_audio_free_context = _oswrapper_audio_free_contextPtr
      .asFunction<bool Function(ffi.Pointer<OSWrapper_audio_spec>)>();

  /// Load a sound file from memory.
  /// The passed memory may not be copied, and is not freed (you retain full control over it).
  /// Therefore, the memory must stay valid until after you call oswrapper_audio_free_context.
  /// You can set the values on the passed OSWrapper_audio_spec,
  /// which will be treated as hints for choosing the output format for decoding.
  /// The initialised audio context is returned in the passed OSWrapper_audio_spec,
  /// which will also contain information about the output format (channels, sample rate etc.)
  /// Returns 1 on success, or 0 on failure.
  bool oswrapper_audio_load_from_memory(
    ffi.Pointer<ffi.UnsignedChar> data,
    int data_size,
    ffi.Pointer<OSWrapper_audio_spec> audio,
  ) {
    return _oswrapper_audio_load_from_memory(
      data,
      data_size,
      audio,
    );
  }

  late final _oswrapper_audio_load_from_memoryPtr = _lookup<
          ffi.NativeFunction<
              ffi.Bool Function(ffi.Pointer<ffi.UnsignedChar>, ffi.Size,
                  ffi.Pointer<OSWrapper_audio_spec>)>>(
      'oswrapper_audio_load_from_memory');
  late final _oswrapper_audio_load_from_memory =
      _oswrapper_audio_load_from_memoryPtr.asFunction<
          bool Function(ffi.Pointer<ffi.UnsignedChar>, int,
              ffi.Pointer<OSWrapper_audio_spec>)>();

  /// Load a sound file from the given path.
  /// You can set the values on the passed OSWrapper_audio_spec,
  /// which will be treated as hints for choosing the output format for decoding.
  /// The initialised audio context is returned in the passed OSWrapper_audio_spec,
  /// which will also contain information about the output format (channels, sample rate etc.)
  /// Returns 1 on success, or 0 on failure.
  bool oswrapper_audio_load_from_path(
    ffi.Pointer<ffi.Char> path,
    ffi.Pointer<OSWrapper_audio_spec> audio,
  ) {
    return _oswrapper_audio_load_from_path(
      path,
      audio,
    );
  }

  late final _oswrapper_audio_load_from_pathPtr = _lookup<
          ffi.NativeFunction<
              ffi.Bool Function(
                  ffi.Pointer<ffi.Char>, ffi.Pointer<OSWrapper_audio_spec>)>>(
      'oswrapper_audio_load_from_path');
  late final _oswrapper_audio_load_from_path =
      _oswrapper_audio_load_from_pathPtr.asFunction<
          bool Function(
              ffi.Pointer<ffi.Char>, ffi.Pointer<OSWrapper_audio_spec>)>();

  /// Unstable-ish API */
  /// /* Sets the value pointed to by pos to the current position.
  /// Returns 1 on success, or 0 on failure.
  bool oswrapper_audio_get_pos(
    ffi.Pointer<OSWrapper_audio_spec> audio,
    ffi.Pointer<ffi.LongLong> pos,
  ) {
    return _oswrapper_audio_get_pos(
      audio,
      pos,
    );
  }

  late final _oswrapper_audio_get_posPtr = _lookup<
      ffi.NativeFunction<
          ffi.Bool Function(ffi.Pointer<OSWrapper_audio_spec>,
              ffi.Pointer<ffi.LongLong>)>>('oswrapper_audio_get_pos');
  late final _oswrapper_audio_get_pos = _oswrapper_audio_get_posPtr.asFunction<
      bool Function(
          ffi.Pointer<OSWrapper_audio_spec>, ffi.Pointer<ffi.LongLong>)>();

  /// Seek to the given position.
  void oswrapper_audio_seek(
    ffi.Pointer<OSWrapper_audio_spec> audio,
    int pos,
  ) {
    return _oswrapper_audio_seek(
      audio,
      pos,
    );
  }

  late final _oswrapper_audio_seekPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<OSWrapper_audio_spec>,
              ffi.LongLong)>>('oswrapper_audio_seek');
  late final _oswrapper_audio_seek = _oswrapper_audio_seekPtr
      .asFunction<void Function(ffi.Pointer<OSWrapper_audio_spec>, int)>();

  /// Seek to the start of the audio context.
  void oswrapper_audio_rewind(
    ffi.Pointer<OSWrapper_audio_spec> audio,
  ) {
    return _oswrapper_audio_rewind(
      audio,
    );
  }

  late final _oswrapper_audio_rewindPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<OSWrapper_audio_spec>)>>('oswrapper_audio_rewind');
  late final _oswrapper_audio_rewind = _oswrapper_audio_rewindPtr
      .asFunction<void Function(ffi.Pointer<OSWrapper_audio_spec>)>();

  /// Write decoded audio samples to the given buffer. The return value is the amount of samples written.
  int oswrapper_audio_get_samples(
    ffi.Pointer<OSWrapper_audio_spec> audio,
    ffi.Pointer<ffi.Short> buffer,
    int frames_to_do,
  ) {
    return _oswrapper_audio_get_samples(
      audio,
      buffer,
      frames_to_do,
    );
  }

  late final _oswrapper_audio_get_samplesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Size Function(
              ffi.Pointer<OSWrapper_audio_spec>,
              ffi.Pointer<ffi.Short>,
              ffi.Size)>>('oswrapper_audio_get_samples');
  late final _oswrapper_audio_get_samples =
      _oswrapper_audio_get_samplesPtr.asFunction<
          int Function(ffi.Pointer<OSWrapper_audio_spec>,
              ffi.Pointer<ffi.Short>, int)>();

  late final addresses = _SymbolAddresses(this);
}

class _SymbolAddresses {
  final OWAudio _library;
  _SymbolAddresses(this._library);
  ffi.Pointer<ffi.NativeFunction<ffi.Bool Function()>>
      get oswrapper_audio_init => _library._oswrapper_audio_initPtr;
  ffi.Pointer<ffi.NativeFunction<ffi.Bool Function()>>
      get oswrapper_audio_uninit => _library._oswrapper_audio_uninitPtr;
  ffi.Pointer<
          ffi
          .NativeFunction<ffi.Bool Function(ffi.Pointer<OSWrapper_audio_spec>)>>
      get oswrapper_audio_free_context =>
          _library._oswrapper_audio_free_contextPtr;
  ffi.Pointer<
          ffi.NativeFunction<
              ffi.Bool Function(ffi.Pointer<ffi.UnsignedChar>, ffi.Size,
                  ffi.Pointer<OSWrapper_audio_spec>)>>
      get oswrapper_audio_load_from_memory =>
          _library._oswrapper_audio_load_from_memoryPtr;
  ffi.Pointer<
          ffi.NativeFunction<
              ffi.Bool Function(
                  ffi.Pointer<ffi.Char>, ffi.Pointer<OSWrapper_audio_spec>)>>
      get oswrapper_audio_load_from_path =>
          _library._oswrapper_audio_load_from_pathPtr;
  ffi.Pointer<
      ffi.NativeFunction<
          ffi.Bool Function(ffi.Pointer<OSWrapper_audio_spec>,
              ffi.Pointer<ffi.LongLong>)>> get oswrapper_audio_get_pos =>
      _library._oswrapper_audio_get_posPtr;
  ffi.Pointer<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Pointer<OSWrapper_audio_spec>, ffi.LongLong)>>
      get oswrapper_audio_seek => _library._oswrapper_audio_seekPtr;
  ffi.Pointer<
          ffi
          .NativeFunction<ffi.Void Function(ffi.Pointer<OSWrapper_audio_spec>)>>
      get oswrapper_audio_rewind => _library._oswrapper_audio_rewindPtr;
  ffi.Pointer<
      ffi.NativeFunction<
          ffi.Size Function(
              ffi.Pointer<OSWrapper_audio_spec>,
              ffi.Pointer<ffi.Short>,
              ffi.Size)>> get oswrapper_audio_get_samples =>
      _library._oswrapper_audio_get_samplesPtr;
}

/// What format the decoded audio is in.
abstract class OSWrapper_audio_type {
  static const int OSWRAPPER_AUDIO_FORMAT_NOT_SET = 0;
  static const int OSWRAPPER_AUDIO_FORMAT_PCM_INTEGER = 1;
  static const int OSWRAPPER_AUDIO_FORMAT_PCM_FLOAT = 2;
}

/// Endianness of the decoded audio. Most platforms use little-endian.
abstract class OSWrapper_audio_endianness_type {
  static const int OSWRAPPER_AUDIO_ENDIANNESS_USE_SYSTEM_DEFAULT = 0;
  static const int OSWRAPPER_AUDIO_ENDIANNESS_LITTLE = 1;
  static const int OSWRAPPER_AUDIO_ENDIANNESS_BIG = 2;
}

/// The created audio context.
/// The values can be set before creating an audio context
/// with the oswrapper_audio_load_from_ functions,
/// which will be treated as hints for choosing the output format for decoding.
/// The values should be treated as read-only once created, otherwise things will break.
/// Don't use the internal_data member,
/// it's for storing the platform-specific decoding context.
final class OSWrapper_audio_spec extends ffi.Struct {
  external ffi.Pointer<ffi.Void> internal_data;

  @ffi.UnsignedLong()
  external int sample_rate;

  @ffi.UnsignedInt()
  external int channel_count;

  @ffi.UnsignedInt()
  external int bits_per_channel;

  @ffi.Int32()
  external int audio_type;

  @ffi.Int32()
  external int endianness_type;
}