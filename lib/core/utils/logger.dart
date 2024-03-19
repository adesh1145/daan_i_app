import 'dart:developer';

class Logger {
  static LogMode _logMode = LogMode.debug;

  static void init(LogMode mode) {
    Logger._logMode = mode;
  }

  static void logPrint(dynamic data, {StackTrace? stackTrace}) {
    if (_logMode == LogMode.debug) {
      log(data, stackTrace: stackTrace);
    }
  }
}

enum LogMode { debug, live }
