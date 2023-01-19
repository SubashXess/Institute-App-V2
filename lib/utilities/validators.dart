class FormValidators {
  static String? fNameValidation(String value) {
    bool hasSpecialCharacters = value.contains(RegExp(r"^[a-zA-Z\s]+$"));
    bool hasNumber = value.contains(RegExp(r"^[a-zA-Z0-9]+$"));

    if (value.isEmpty) {
      return 'First name is required';
    } else if (value.length < 4) {
      return 'Please enter valid first name';
    } else if (!hasSpecialCharacters) {
      if (hasNumber) {
        return 'Numbers are not allowed';
      }
      return 'Special Characters are not allowed';
    }
    return null;
  }

  static String? lNameValidation(String value) {
    bool hasSpecialCharacters = value.contains(RegExp(r"^[a-zA-Z\s]+$"));
    bool hasNumber = value.contains(RegExp(r"^[a-zA-Z0-9]+$"));

    if (value.isEmpty) {
      return 'Surename is required';
    } else if (value.length < 3) {
      return 'Please enter valid surename';
    } else if (!hasSpecialCharacters) {
      if (hasNumber) {
        return 'Numbers are not allowed';
      }
      return 'Special Characters are not allowed';
    }
    return null;
  }

  static String? emailValidation(String value) {
    String pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Email is required';
    } else if (value.contains(' ')) {
      return 'Spaces are not allowed';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid email';
    }
    return null;
  }

  static String? passwordValidation(String value) {
    bool hasUppercase = value.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = value.contains(RegExp(r'[a-z]'));

    if (value.isEmpty) {
      return 'Password is required';
    } else if (value.contains(' ')) {
      return 'Spaces are not allowed';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    } else if (!hasLowercase) {
      return 'Contains at least one lowercase letter';
    } else if (!hasUppercase) {
      return 'Contains at least one uppercase letter';
    }
    return null;
  }

  static String? phoneValidation(String value) {
    String pattern =
        r"^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[6789]\d{9}|(\d[ -]?){10}\d$";
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Phone is required';
    } else if (value.length < 10) {
      return 'Please enter valid phone number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid number';
    }
    return null;
  }
}
