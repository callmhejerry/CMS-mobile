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
}
