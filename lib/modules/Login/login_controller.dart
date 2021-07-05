import 'package:level_up_3/shared/controllers/storage_controller.dart';

class LoginController extends StorageController {
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "It is blank!";
    } else if (value != checkUser.email) {
      return "User not found.";
    } else {
      return null;
    }
  }

  String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "It is blank!";
    } else if (value != checkUser.password) {
      return "Wrong password!";
    } else {
      return null;
    }
  }
}
