import 'package:dio/dio.dart';
import 'package:innovatrix_assesment/data/model/auth_model.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  final Dio dio;
  LoginRepository({required this.dio});

  @override
  Future<Result<AuthModel, APIException>> signin(
      {required String email, required String password}) async {
    final result = await dio.post(
      'AppUrls.userLoginUrl',
      data: {
        "email": email,
        "password": password,
      },
    );
    if (result.statusCode == 200 || result.statusCode == 201) {
      return Success(AuthModel.fromMap(result.data));
    } else {
      return Error(APIException.fromMap(result.data));
    }
  }
}
