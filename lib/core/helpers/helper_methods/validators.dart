import '../../constants/app_constants.dart';

class Validators {
  static String? validateEmpty(String? value,) {
    if (value == null || value.isEmpty) {
      return 'This Field Can\'t be empty';
    }
    return null;
  }

  static String? validatePassword(String? password) {
    if (password?.trim().isEmpty ?? true) {
      return 'Please Enter Password';
    } else if (password!.length < 6) {
      return 'password must be more than 6 characters';
    }
    return null;
  }

  static String? validateEmail(String? value,) {
    if (value?.trim().isEmpty ?? true) {
      return 'Please Enter Email';
    } else if (!RegExp(Constants.emailRegExp).hasMatch(value!)) {
      return 'invalid email format';
    }
    return null;
  }

  static String? validatePhone(String? value,) {
    if (value?.trim().isEmpty ?? true) {
      return 'Please Enter Phone';
    } else if (!RegExp(Constants.phoneRegExp).hasMatch(value!) || value.length < 10) {
      return 'invalid phone format or length must be less than 10';
    }
    return null;
  }

  static String? validatePasswordConfirm(String? value, String? pass,) {
    if (value?.trim().isEmpty ?? true) {
      return 'Please password confirmation';
    } else if (value != pass) {
      return 'The password isn\'t match';
    }
    return null;
  }
}