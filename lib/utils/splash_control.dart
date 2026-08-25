import 'package:flutter/widgets.dart';

abstract class SplashControl {
  static WidgetsBinding? _widgetsBinding;

  static void preserve({required WidgetsBinding widgetsBinding}) {
    _widgetsBinding = widgetsBinding;
    _widgetsBinding?.deferFirstFrame();
  }

  static void remove() {
    _widgetsBinding?.allowFirstFrame();
    _widgetsBinding = null;
  }
}
