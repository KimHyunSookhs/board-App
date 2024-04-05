import 'dart:convert';
import 'package:get/get.dart';
import 'package:mojadel2/config/user_model.dart';
import 'package:http/http.dart' as http;
import 'package:mojadel2/mypage/mypage.dart';

Future<void> saveUser(User user) async {
  try {
    final response = await http.post(
      Uri.parse("http://localhost:4000/api/v1/auth/sign-up"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()),
    );
    if (response.statusCode != 200) {
      throw Exception("Failed to send data");
    } else {
      print("User Data sent successfully");
      Get.to(const mypagesite());
    }
  } catch (e) {
    print("Failed to send user data: ${e}");
  }
}
