import 'package:isar/isar.dart';

part 'theme_storage.g.dart';

@Collection()
class LocalThemeStorage {
  Id id = Isar.autoIncrement;
  String? themeName;
}
