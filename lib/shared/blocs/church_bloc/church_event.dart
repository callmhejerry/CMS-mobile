abstract class ChurchEvent {}

class LoadChurches extends ChurchEvent {}

class SelectChurch extends ChurchEvent {
  final String church;
  SelectChurch({required this.church});
}
