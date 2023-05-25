enum RelationshipStatus {
  single,
  married,
  divorse,
}

extension RelationshipStatusExtension on RelationshipStatus {
  String get name {
    switch (this) {
      case RelationshipStatus.single:
        return "single";
      case RelationshipStatus.married:
        return "married";
      default:
        return "divorse";
    }
  }

  static RelationshipStatus toRelationshipStatus(String relationshipStatus) {
    switch (relationshipStatus.toLowerCase()) {
      case "married":
        return RelationshipStatus.married;
      case "single":
        return RelationshipStatus.single;
      default:
        return RelationshipStatus.divorse;
    }
  }
}
