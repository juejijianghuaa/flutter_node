import 'dart:ffi';
import 'dart:io';

DynamicLibrary? _loadLibrary() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open("libnode.so");
  } else if (Platform.isIOS) {
    return DynamicLibrary.open("NodeMobile.framework/NodeMobile");
  } else if (Platform.isMacOS) {
    return DynamicLibrary.open("libnode.79.dylib");
  } else {
    return null;
  }
}

final DynamicLibrary cNodeLib = _loadLibrary() ?? DynamicLibrary.process();
