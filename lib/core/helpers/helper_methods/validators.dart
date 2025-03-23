import 'package:nexus/core/helpers/helper_methods/app_regex.dart';

import '../../constants/app_constants.dart';

class Validators {
  static String? validateEmpty(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'This Field Can\'t be empty';
    }
    return null;
  }

  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    } else if (value.length < 2) {
      return 'Name must be at least 2 characters';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!AppRegex.isEmailValid(value)) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String? validatePhone(
    String? value,
  ) {
    if (value?.trim().isEmpty ?? true) {
      return 'Please Enter Phone';
    } else if (!RegExp(Constants.phoneRegExp).hasMatch(value!) ||
        value.length < 10) {
      return 'invalid phone format or length must be less than 10';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (!AppRegex.isPasswordValid(value)) {
      return 'Password must contain at least 8 characters, '
          'including\n an uppercase letter, number, and special character';
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm your password';
    } else if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }
}
