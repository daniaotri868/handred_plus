import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'font.dart';

TextTheme appTextTheme(BuildContext context, TextTheme base, Color textColor) {
  return base
      .copyWith(
        headlineLarge: base.headlineLarge?.copyWith(
          fontSize: _FontSize.text_64,
          fontWeight: _regular,
            fontFamily: 'BoutrosART'

        ),
        headlineMedium: base.headlineMedium?.copyWith(
          fontSize: _FontSize.text_36,
          fontWeight: _extraBold,
            fontFamily: 'BoutrosART'

        ),
        headlineSmall: base.headlineSmall?.copyWith(
          fontSize: _FontSize.text_24,
          fontWeight: _extraBold,
            fontFamily: 'BoutrosART'

        ),
        titleLarge: base.titleLarge?.copyWith(
          fontSize: _FontSize.text_22,
          fontWeight: _bold,
            fontFamily: 'BoutrosART'

        ),
        titleMedium: base.titleMedium?.copyWith(
          fontSize: _FontSize.text_20,
          fontWeight: _extraBold,
            fontFamily: 'BoutrosART'

        ),
        titleSmall: base.titleSmall?.copyWith(
          fontSize: _FontSize.text_18,
          fontWeight: _regular,
          fontFamily: 'BoutrosART'
        ),
        bodyLarge: base.bodyLarge?.copyWith(
          fontSize: _FontSize.text_33,
          fontWeight: _semiBold,
            fontFamily: 'BoutrosART'

        ),
        bodyMedium: base.bodyMedium?.copyWith(
          fontSize: _FontSize.text_13,
          fontWeight: _regular,
            fontFamily: 'BoutrosART'

        ),
        bodySmall: base.bodySmall?.copyWith(
          fontSize: _FontSize.text_11,
          fontWeight: _regular,
            fontFamily: 'BoutrosART'

        ),
      )
      .apply(displayColor: textColor, bodyColor: textColor);
}
