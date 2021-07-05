import 'package:email_validator/email_validator.dart';

class Validators {
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "It is blank!";
    } else if (EmailValidator.validate(value) == false) {
      return "It is not a valid email!";
    } else {
      return null;
    }
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "It is blank!";
    } else {
      return null;
    }
  }

  String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "It is blank!";
    } else if (value.length < 8) {
      return "It is too short!";
    } else {
      return null;
    }
  }
}
