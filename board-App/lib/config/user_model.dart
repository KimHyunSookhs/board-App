import 'dart:ffi';

class User {
  final String? email;
  final String? password;
  final String? nickname;
  final String? telNumber;
  final String? address;
  final String? addressDetail;
  final bool agredPersonal;

  User(
      {required this.email,
      required this.password,
      required this.nickname,
      required this.telNumber,
      required this.address,
      required this.addressDetail,
      this.agredPersonal = true});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      password: json['password'],
      nickname: json['nickname'],
      telNumber: json['telNumber'],
      address: json['address'],
      addressDetail: json['addressDetail'],
      agredPersonal: json['agredPersonal'] ?? true,
    );
  }
  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'nickname': nickname,
        'telNumber': telNumber,
        'address': address,
        'addressDetail': addressDetail,
        'agredPersonal': agredPersonal,
      };
}
