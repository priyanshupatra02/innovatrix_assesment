// import 'package:innovatrix_assesment/core/local_storage/app_storage.dart';
// import 'package:innovatrix_assesment/data/model/auth_model.dart';

// import 'i_login_db_service.dart';

// class LoginDbService implements ILoginDbService {
//   final AppStorage appStorage;
//   LoginDbService({
//     required this.appStorage,
//   });

//   final loginModelKey = 'loginModel';
//   @override
//   Future<void> deleteLoginModel() async {
//     final box = appStorage.isarDb;
//     await box?.delete(loginModelKey);
//   }

//   @override
//   AuthModel? getLoginModel() {
//     final box = appStorage.isarDb;
//     final loginModel = box?.get(loginModelKey) as String?;
//     if (loginModel != null) {
//       return AuthModel.fromJson(loginModel);
//     } else {
//       return null;
//     }
//   }

//   //saves the login model to the local storage for both signup and signin process
//   @override
//   Future<void> saveLoginModel({required AuthModel loginModel}) async {
//     final box = appStorage.isarDb;
//     await box?.put(loginModelKey, loginModel.toJson());
//   }
// }
