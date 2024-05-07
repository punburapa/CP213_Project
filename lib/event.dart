class Event {
  final String eventName;

  Event(this.eventName);

  @override
  String toString() {
    return eventName;
  }

  DateTime nextDate() {
    return DateTime.now();
  }

  void update(DateTime dateTime, Function(dynamic value) param1,
      {required List<Event> Function() ifAbsent}) {}
}
