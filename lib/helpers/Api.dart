import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll(
        {'Authorization': 'Bearer $token'},
      );
    }

    // response.body is a JSON string like this
    //"[{\"id\": 1, \"title\": \"Product 1\", \"price\": 29.99, ...}]"
    http.Response response = await http.get(Uri.parse(url), headers: headers);

    // converts a JSON string into a corresponding Dart object Map or List
    // here the url returns a json list so it convert is into dart List
    // where each item in the list is a Map<String, dynamic> representing each product.
    Map<String, dynamic> data = jsonDecode(response.body);
    // data is a Dart list of maps after decoding
    // [
    //   {
    //     "id": 1,
    //     "title": "Product 1",
    //     "price": 29.99,
    //     ...
    //   }
    // ]

    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception(
          "there is error with this status code : ${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll(
        {'Authorization': 'Bearer $token'},
      );
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          "there is a problem with status code : ${response.statusCode} , with body : ${response.body}");
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};

    log("url ${url}");
    log("body ${body}");

    headers.addAll(
      {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    );

    if (token != null) {
      headers.addAll(
        {
          'Authorization': 'Bearer $token',
        },
      );
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      log("data $data");
      return data;
    } else {
      throw Exception(
          "there is a problem with status code : ${response.statusCode} , with body : ${response.body}");
    }
  }
}
