import 'package:flutter/foundation.dart';
import 'package:random_users_app/Models/RandomUsersModel.dart';
import 'package:random_users_app/Services/RandomUsersService.dart';

class Randomuserprovider extends ChangeNotifier {
  List<RandomUserModel>? RandomUsersList = [];

  Future<void> GetRandomUsersProvider() async {
    RandomUsersList = await Randomusersservice.GetRandomData();
    notifyListeners();
  }
}
