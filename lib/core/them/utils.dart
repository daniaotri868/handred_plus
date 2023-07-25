part of 'app_theme.dart';

ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme scheme, TextTheme textTheme2) =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: textTheme2.titleMedium?.r,
        primary: scheme.primary,
        onPrimary: scheme.onPrimary,
        onSurface: scheme.onSurface,
        minimumSize: Size(307.w, 65.h),
        shape: RoundedRectangleBorder(borderRadius: AppConfig.borderRadius),
          side: BorderSide(color:scheme.primary, )
      ),
    );

// TextButtonThemeData _textButtonTheme(ColorScheme scheme, TextTheme textTheme) =>
//     TextButtonThemeData(
//       style: ElevatedButton.styleFrom(
//         foregroundColor: scheme.primary,
//         textStyle: textTheme.bodyMedium,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       ),
//     );

// CardTheme _card(ThemeData theme, ColorScheme scheme, TextTheme textTheme, ThemeMode themeMode) =>
//     theme.cardTheme.copyWith(surfaceTintColor: scheme.onPrimary);
//
// AppBarTheme _appBarTheme(
//         ThemeData theme, ColorScheme scheme, TextTheme textTheme, ThemeMode themeMode) =>
//     theme.appBarTheme.copyWith(
//         backgroundColor: scheme.primary,
//         titleTextStyle: textTheme.titleLarge,
//         systemOverlayStyle:
//             themeMode == ThemeMode.dark ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
//         elevation: 0.0,
//         surfaceTintColor: scheme.surface);
//
// DividerThemeData _dividerTheme(ThemeData theme, ColorScheme scheme) =>
//     theme.dividerTheme.copyWith(color: scheme.outline.withOpacity(0.2), thickness: 1);
//
// BottomSheetThemeData _bottomSheetThemeData(ThemeData theme) => theme.bottomSheetTheme.copyWith(
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(15),
//         ),
//       ),
//       backgroundColor: theme.colorScheme.background,
//     );
