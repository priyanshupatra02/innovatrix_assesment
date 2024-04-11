import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ISignupRepository {
  Future<Result<LocalUser?, APIException>> signup({
    required String phoneNumber,
    required String email,
    required String password,
  });
}
