import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:isar/isar.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  final Isar isar;
  LoginRepository({required this.isar});

  @override
  Future<Result<LocalUser?, APIException>> signin(
      {required String email, required String password, required bool isLoggedIn}) async {
    try {
      final localUserFromDB = await isar.localUsers.where().findFirst();
      if (localUserFromDB != null) {
        if (localUserFromDB.email == email && localUserFromDB.password == password) {
          // localUserFromDB.isLoggedIn = isLoggedIn;
          await isar.writeTxn(() async {
            localUserFromDB.isLoggedIn = isLoggedIn;
            await isar.localUsers.put(localUserFromDB);
          });

          return Success(localUserFromDB);
        } else {
          return Error(APIException(errorMessage: 'Invalid email or password'));
        }
      } else {
        return Error(APIException(errorMessage: 'No db users found'));
      }
    } catch (e) {
      return Result.error(APIException(errorMessage: e.toString()));
    }
  }
}
