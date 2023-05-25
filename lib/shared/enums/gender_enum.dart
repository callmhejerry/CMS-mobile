enum Gender {
  male,
  female,
}

extension GenderExtension on Gender {
  String get name {
    switch (this) {
      case Gender.male:
        return "male";
      case Gender.female:
        return "female";
    }
  }

  static Gender toGender(String gender) {
    switch (gender.toLowerCase()) {
      case "female":
        return Gender.female;
      case "male":
        return Gender.male;
      default:
        return Gender.male;
    }
  }
}
