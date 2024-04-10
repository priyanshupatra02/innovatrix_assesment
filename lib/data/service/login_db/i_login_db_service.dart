import 'package:innovatrix_assesment/data/model/auth_model.dart';

abstract class ILoginDbService {
  Future<void> saveLoginModel({required AuthModel loginModel});
  Future<void> deleteLoginModel();
  AuthModel? getLoginModel();
}
