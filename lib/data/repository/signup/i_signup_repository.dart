import 'package:innovatrix_assesment/data/model/auth_model.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ISignupRepository {
  Future<Result<AuthModel, APIException>> signup({
    required String name,
    required String email,
    required String password,
  });
}
