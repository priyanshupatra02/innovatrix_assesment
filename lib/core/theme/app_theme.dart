import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:innovatrix_assesment/const/app_colors.dart';


///This class defines light theme and dark theme
///Here we used flex color scheme
class Themes {
  static ThemeData get lightTheme => FlexThemeData.light(
        colors: _myFlexScheme.light,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 0.95,
        swapColors: true,
        tabBarStyle: FlexTabBarStyle.forBackground,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          blendOnColors: false,
          inputDecoratorRadius: 8,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // replace default CupertinoPageTransitionsBuilder with this
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        // To use the playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.getFont('Lato').fontFamily,
      ).copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.kSecondPrimaryBgColor,
        ),
      );

  static ThemeData get darkTheme => FlexThemeData.dark(
        colors: _myFlexScheme.dark,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        scaffoldBackground: AppColors.kPrimaryBgColor,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.0,
        appBarElevation: 0.0,
        appBarBackground: Colors.transparent,
        surfaceTint: Colors.transparent,
        tabBarStyle: FlexTabBarStyle.forBackground,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
          inputDecoratorRadius: 8,
          outlinedButtonSchemeColor: SchemeColor.secondary,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // replace default CupertinoPageTransitionsBuilder with this
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        // To use the playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.getFont('Lato').fontFamily,
      ).copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.kSecondaryBgColor,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: AppColors.kSecondPrimaryBgColor,
          backgroundColor: AppColors.kSecondaryBgColor,
        ),
      );
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,
}

//change this according to the file exported by m3 buil
// const ColorScheme _m3schemeData = ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xff68548e),
//   surfaceTint: Color(0xff68548e),
//   onPrimary: Color(0xffffffff),
//   primaryContainer: Color(0xffebddff),
//   onPrimaryContainer: Color(0xff230f46),
//   secondary: Color(0xff635b70),
//   onSecondary: Color(0xffffffff),
//   secondaryContainer: Color(0xffe9def8),
//   onSecondaryContainer: Color(0xff1f182b),
//   tertiary: Color(0xff7e525d),
//   onTertiary: Color(0xffffffff),
//   tertiaryContainer: Color(0xffffd9e1),
//   onTertiaryContainer: Color(0xff31101b),
//   error: Color(0xffba1a1a),
//   onError: Color(0xffffffff),
//   errorContainer: Color(0xffffdad6),
//   onErrorContainer: Color(0xff410002),
//   background: Color(0xfffef7ff),
//   onBackground: Color(0xff1d1b20),
//   surface: Color(0xfffef7ff),
//   onSurface: Color(0xff1d1b20),
//   surfaceVariant: Color(0xffe7e0eb),
//   onSurfaceVariant: Color(0xff49454e),
//   outline: Color(0xff7a757f),
//   outlineVariant: Color(0xffcbc4cf),
//   shadow: Color(0xff000000),
//   scrim: Color(0xff000000),
//   inverseSurface: Color(0xff322f35),
//   inversePrimary: Color(0xffd3bcfd),
// );

FlexSchemeData _myFlexScheme = const FlexSchemeData(
  name: 'Black pearl',
  description: 'Black and white theme',
  light: FlexSchemeColor(
    primary: Color(0xFF121212),
    primaryContainer: Color(0xFF242424),
    secondary: Color(0xFF373737),
    secondaryContainer: Color(0xFF494949),
  ),
  dark: FlexSchemeColor(
    primary: Color(0xFF121212),
    primaryContainer: Color(0xFF242424),
    secondary: Color(0xFF373737),
    secondaryContainer: Color(0xFF494949),
  ),
);
