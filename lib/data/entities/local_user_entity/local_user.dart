import 'package:isar/isar.dart';

part 'local_user.g.dart';

@Collection()
class LocalUser {
  Id id = Isar.autoIncrement;
  
  String? email;
  String? password;
  String? phoneNumber;
}
