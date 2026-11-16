import 'dart:math';

import 'package:dio/dio.dart';
import 'package:random_users_app/Models/RandomUsersModel.dart';

class Randomusersservice {
  static Future<List<RandomUserModel>> GetRandomData() async {
    final Dio dio = Dio();
    final response = await dio.get('https://randomuser.me/api/?results=10');

    List<dynamic> UsersInJson = response.data["results"];

    List<RandomUserModel> Users = UsersInJson.map((e) {
      return RandomUserModel.fromJson(e);
    }).toList();

    return Users;
  }
}
