import 'dart:convert';

import 'package:innovatrix_assesment/data/model/user_model.dart';

class AuthModel {
  final User user;

  AuthModel({
    required this.user,
  });

  AuthModel copyWith({
    String? message,
    User? user,
  }) =>
      AuthModel(
        user: user ?? this.user,
      );

  factory AuthModel.fromJson(String str) => AuthModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthModel.fromMap(Map<String, dynamic> json) => AuthModel(
        user: json["user"] = User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "user": user.toMap(),
      };
}
