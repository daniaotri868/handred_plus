import 'package:alpha_brand/core/helper/AppConfig.dart';
import 'package:alpha_brand/core/them/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


part 'light_color_scheme.dart';

// part 'dark_color_scheme.dart';

part 'utils.dart';

const defaultAppTheme = ThemeMode.system;

final mapAppThemeMode = <String, ThemeMode>{
  ThemeMode.light.name: ThemeMode.light,
  // ThemeMode.dark.name: ThemeMode.dark,
  ThemeMode.system.name: ThemeMode.system,
};

var sysBrightness = SchedulerBinding.instance.window.platformBrightness;

ThemeData getAppTheme(ThemeMode mode, BuildContext context) {
  final mapAppTheme = <ThemeMode, ThemeData>{
    ThemeMode.light: AppTheme.light(context),
    // ThemeMode.dark: AppTheme.dark(context),
    ThemeMode.system:  AppTheme.light(context),
    // ThemeMode.system: sysBrightness == Brightness.dark ? AppTheme.dark(context) : AppTheme.light(context),
  };

  return mapAppTheme[mode]!;
}

class AppTheme {
  static ThemeData get _builtInLightTheme => ThemeData.light();

  // static ThemeData get _builtInDarkTheme => ThemeData.dark();

  static ThemeData light(BuildContext context) {
    final textTheme = appTextTheme(
      context,
      _builtInLightTheme.textTheme,
      _lightColorScheme.onBackground,
    );
    final textThem2=appTextTheme(
        context
        , _builtInLightTheme.textTheme
        , _lightColorScheme.onPrimary
    );

    return _builtInLightTheme.copyWith(

        colorScheme: _lightColorScheme,
        textTheme: textTheme,
        useMaterial3: true,
        typography: Typography.material2021(),
        elevatedButtonTheme: _elevatedButtonTheme(_lightColorScheme, textThem2),
        // textButtonTheme: _textButtonTheme(_lightColorScheme, textTheme),
        // scaffoldBackgroundColor: _lightColorScheme.background,
        // cardTheme: _card(_builtInLightTheme, _lightColorScheme, textTheme, ThemeMode.light),
        // appBarTheme: _appBarTheme(_builtInLightTheme, _lightColorScheme, textTheme, ThemeMode.light),
        // dividerTheme: _dividerTheme(_builtInLightTheme, _lightColorScheme),
        // primaryColor: _lightColorScheme.primary,
        // bottomSheetTheme: _bottomSheetThemeData(_builtInLightTheme)

    );
  }

}
