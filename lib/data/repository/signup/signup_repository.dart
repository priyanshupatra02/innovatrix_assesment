import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:isar/isar.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_signup_repository.dart';

class SignupRepository implements ISignupRepository {
  final Isar isar;

  SignupRepository({required this.isar});

  @override
  Future<Result<LocalUser?, APIException>> signup(
      {required String phoneNumber, required String email, required String password, required bool isLoggedIn}) async {
    try {
      //if no user in db found
      final newUser = LocalUser()
        ..email = email
        ..password = password
        ..phoneNumber = phoneNumber
        ..isLoggedIn = isLoggedIn;

      //if user is found in db
      //updating the value in the local db
      final localUserFromDB = await isar.localUsers.where().findFirst();
      final result = await isar.writeTxn<LocalUser>(() async {
        localUserFromDB?.email = email;
        localUserFromDB?.password = password;
        localUserFromDB?.phoneNumber = phoneNumber;
        localUserFromDB?.isLoggedIn = false;
        if (localUserFromDB != null) {
          await isar.localUsers.put(
            localUserFromDB,
          );
        } else {
          await isar.localUsers.put(
            newUser,
          );
        }
        return localUserFromDB ?? newUser;
      });

      return Success(result);
    } catch (e) {
      return Result.error(APIException(errorMessage: e.toString()));
    }
  }
}
