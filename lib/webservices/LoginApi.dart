import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/response/LoginResponse.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:toast/toast.dart';


class LoginApi {
  final String email;
  final String password;
  final String role;

  LoginApi({this.email, this.password, this.role});

  factory LoginApi.fromJson(Map jso) {
    return LoginApi(
      email: jso['email'],
      password: jso['password'],
      role: jso['role']
    );
  }

  Map toMap() {
    var map = new Map();
    map["email"] = email;
    map["password"] = password;
    map["role"] = role;

    return map;
  }
}

Future createLoginApi(String url, BuildContext context, {Map body}) async {
  return http.post(url, body: body).then((http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      Toast.show("Invalid credentials", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    }
    return LoginResponse.fromJson(json.decode(response.body));
  });
}
