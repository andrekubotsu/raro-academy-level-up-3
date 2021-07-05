import 'package:level_up_3/shared/controllers/storage_controller.dart';

class PassRecoveryController extends StorageController {
  String? emailValidator(String? value) {
    getUser();
    if (value == null || value.isEmpty) {
      return "It is blank!";
    } else if (value != checkUser.email) {
      return "User not found.";
    } else {
      return null;
    }
  }
}
