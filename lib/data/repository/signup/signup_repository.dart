import 'package:dio/dio.dart';
import 'package:innovatrix_assesment/const/app_urls.dart';
import 'package:innovatrix_assesment/data/model/auth_model.dart';
import 'package:innovatrix_assesment/shared/exception/base_exception.dart';
import 'package:multiple_result/multiple_result.dart';

import 'i_signup_repository.dart';

class SignupRepository implements ISignupRepository {
  final Dio dio;

  SignupRepository({required this.dio});
  @override
  Future<Result<AuthModel, APIException>> signup(
      {required String name, required String email, required String password}) async {
    final result = await dio.post(
      'AppUrls.userSignupUrl',
      data: {
        "name": name,
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
