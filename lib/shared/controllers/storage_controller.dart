import 'package:level_up_3/shared/models/userModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageController {
  bool saveSuccess = false;
  var checkUser;

  var userModel = UserModel(email: "", name: "", password: "");

  void onChange({String? email, String? name, String? password}) {
    userModel =
        userModel.copyWith(name: name, email: email, password: password);
  }

  Future<void> saveUser() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = await instance.setString("user", userModel.toJson());
      if (response) {
        print("Deu certo!");
        saveSuccess = !saveSuccess;
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
        checkUser = UserModel.fromJson(response);
      }
    } catch (error) {
      print(error);
    }
  }
}
