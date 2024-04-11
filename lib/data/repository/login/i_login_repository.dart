import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';


abstract class ILoginRepository {
  Future<Result<LocalUser?, APIException>> signin({
    required String email,
    required String password,
    required bool isLoggedIn,
  });
}
