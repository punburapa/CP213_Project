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
}
