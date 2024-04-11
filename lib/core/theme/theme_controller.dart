import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:innovatrix_assesment/core/local_storage/app_storage_pod.dart';
import 'package:innovatrix_assesment/data/entities/local_theme_entity/theme_storage.dart';

///This provider stores the ThemeModeController
final themecontrollerProvider = NotifierProvider.autoDispose<ThemeModeController, ThemeMode>(
  ThemeModeController.new,
  name: 'themecontrollerProvider',
);

///This controller class used change theme and
///get the intial theme from storage if its available
class ThemeModeController extends AutoDisposeNotifier<ThemeMode> {
  @override
  ThemeMode build() {
    final themeName = ref.watch(isarProvider).localThemeStorages.getSync(0)?.themeName;

    if (themeName == ThemeMode.light.name) {
      return ThemeMode.light;
    } else if (themeName == ThemeMode.dark.name) {
      return ThemeMode.dark;
    }
    return ThemeMode.system;
  }

  Future<void> changeTheme(ThemeMode theme) async {
    state = theme;
    ref.read(isarProvider).localThemeStorages.putByIndexSync(
          '0',
          LocalThemeStorage()..themeName = theme.name,
        );
  }
}
