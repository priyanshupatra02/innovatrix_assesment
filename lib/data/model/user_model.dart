import 'dart:convert';

class User {
  final String name;
  final String email;

  final String phoneNumber;

  User({
    required this.name,
    required this.email,
    required this.phoneNumber,
  });

  User copyWith({
    String? name,
    String? email,
    String? phoneNumber,
  }) =>
      User(
        name: name ?? this.name,
        email: email ?? this.email,
        phoneNumber: phoneNumber ?? this.phoneNumber,
      );

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "jwt": phoneNumber,
      };
}
