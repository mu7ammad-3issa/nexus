import 'package:nexus/core/helpers/helper_methods/app_regex.dart';

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
    } else if (!AppRegex.isPhoneNumberValid(value!) || value.length < 10) {
      return 'invalid phone format or length must be less than 10';
    }
    return null;
  }

  static String? validateLoginPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Psst! You need to create a password.';
    } // A list to hold all the missing requirements.
    final List<String> missingRequirements = [];

    // Check for minimum length of 8 characters.
    if (value.length < 8) {
      missingRequirements.add('at least 8 characters');
    }

    // Check for an uppercase letter.
    if (!value.contains(RegExp(r'[A-Z]'))) {
      missingRequirements.add('an uppercase letter (A-Z)');
    }

    // Check for a number.
    if (!value.contains(RegExp(r'[0-9]'))) {
      missingRequirements.add('a number (0-9)');
    }

    // Check for a special character.
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      missingRequirements.add('a special character (@, \$, !, etc.)');
    }

    // If there are any missing requirements, build and return the error message.
    if (missingRequirements.isNotEmpty) {
      // Join the missing parts into a readable list.
      final String missingText = missingRequirements.join(',\n- ');
      return 'Your password is a bit shy! It\'s missing:\n- $missingText';
    }

    // If all checks pass, the password is valid.
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
