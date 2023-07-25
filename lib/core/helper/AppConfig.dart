import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppConfig {
  AppConfig._();

  static Duration get splashScreenDuration => const Duration(seconds: 3);

  static Duration get pageViewAnimationDuration => const Duration(milliseconds: 400);

  static Duration get navigationAnimationDuration => const Duration(milliseconds: 400);

  static EdgeInsets get pagePadding => const EdgeInsets.only(left: 15, right: 15, bottom: 5);

  static BorderRadius get borderRadius => BorderRadius.circular(28.r);
}
