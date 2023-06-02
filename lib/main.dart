import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskgo/task_go_app.dart';

void main() {
  /// Prefer to Use runZonedGuarded over simple run.
  /// This will help to catch any uncaught exceptions.
  /// And pass it on to Crashlytics or any crash reporting tool.

  runZonedGuarded<Future<void>>(() async {
    //Ensures the widget is initialized before calling any other methods
    WidgetsFlutterBinding.ensureInitialized();

    runApp(
      const TaskGoApp(),
    );
  }, ((error, stack) {
    ///Pass the exception & stack trace here.
  }));
}
