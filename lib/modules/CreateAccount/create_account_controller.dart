import 'package:flutter/material.dart';
import 'package:level_up_3/shared/models/userModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateAccountController {
  var userModel = UserModel(email: "", name: "", password: "");

  void onChange({String? email, String? name, String? password}) {
    userModel =
        userModel.copyWith(name: name, email: email, password: password);
  }

  Future<void> saveUser(context) async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = await instance.setString("user", userModel.toJson());
      if (response) {
        print('Success!');
        Navigator.pushNamed(context, "/response");
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> getUser() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getString("user");
      if (response != null) {
        final user = UserModel.fromJson(response);
        //userModel = user;
        print(user);
      }
    } catch (error) {
      print(error);
    }
  }
}
