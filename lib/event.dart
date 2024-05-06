import 'package:flutter/material.dart';

class Event {
  final String eventName;

  Event(this.eventName);

  @override
  String toString() {
    return eventName;
  }
}
