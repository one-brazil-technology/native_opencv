// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'native_opencv_platform_interface.dart';

/// A web implementation of the NativeOpencvPlatform of the NativeOpencv plugin.
class NativeOpencvWeb extends NativeOpencvPlatform {
  /// Constructs a NativeOpencvWeb
  NativeOpencvWeb();

  static void register() {
    NativeOpencvPlatform.instance = NativeOpencvWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
