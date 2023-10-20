import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:libowa_ffi/libowa_ffi.dart';

void main(List<String> arguments) {
  final libraryPath = arguments[1];
  final audioToOpen = arguments[2];

  final dylib = DynamicLibrary.open(libraryPath);
  final lib = OWAudio(dylib);
  final spec = calloc.call<OSWrapper_audio_spec>();
  lib.oswrapper_audio_init();
  lib.oswrapper_audio_load_from_path(audioToOpen.toNativeUtf8().cast(), spec);
}
