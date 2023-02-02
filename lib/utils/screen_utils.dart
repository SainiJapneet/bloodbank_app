import 'dart:developer';

import 'package:logger/logger.dart';

class ScreenUtilities {
  static void screenLogger(String screenName) {
    var logger = Logger();

    log("----------------------------------");
    log("--------------$screenName-------");
    log("----------------------------------");
  }
}
