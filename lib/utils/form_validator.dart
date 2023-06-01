mixin FormValidators {
  String? emailValidator(String? email) {
    final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (email == null) {
      return "Please input your email";
    } else if (!emailRegex.hasMatch(email)) {
      return "Please input a valid email";
    }
    return null;
  }

  String? nameValidator(String? name) {
    if (name == null) {
      return "Please input your name";
    } else if (name.length > 20) {
      return "Please your name is longer than 20 characters";
    }
    return null;
  }

  String? passwordValidator(String? password) {
    if (password == null) {
      return "Please input your password";
    }
    return null;
  }

  String? phoneNumberValidator(String? phoneNumber) {
    if (phoneNumber == null) {
      return "Please input your phone number";
    }

    if (phoneNumber.startsWith("+")) {
      if (phoneNumber.length != 14) {
        return "Please input a valid phone number";
      }
    }

    if (phoneNumber.startsWith('0')) {
      if (phoneNumber.length != 11) {
        return "Please input a valid phone number";
      }
      if (int.tryParse(phoneNumber) == null) {
        return "Please input a valid phone number";
      }
    }
    return null;
  }

  String? churchValidator(String? church) {
    if (church == null) {
      return "Please input a church";
    }
    return null;
  }
}
