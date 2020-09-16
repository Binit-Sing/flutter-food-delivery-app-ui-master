import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app/response/CategoryListResponse.dart';
import 'package:flutter_app/response/LoginResponse.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:toast/toast.dart';
import '../webservices/Api.dart';


class CategoryListApi {
  final String perPage;
  final String page;

  CategoryListApi({this.perPage, this.page});

  factory CategoryListApi.fromJson(Map jso) {
    return CategoryListApi(
        perPage: jso['perPage'],
        page: jso['page']
    );
  }

  Map toMap() {
    var map = new Map();
    map["perPage"] = perPage;
    map["page"] = page;
    return map;
  }

  String toGETUrl() {
    return Api.BASEURL + "category/pagination?perPage=$perPage&page=$page";
  }
}

Future<CategoryListResponse> createCategoryListApi(String url, BuildContext context) async {
  return await http.get(url).then((http.Response response) {
    final int statusCode = response.statusCode;

    if (statusCode < 200 || statusCode > 400 || json == null) {
      Toast.show("Invalid Request", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    }
    //Toast.show(response.body, context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    return CategoryListResponse.fromJson(json.decode(response.body));
  });
}
