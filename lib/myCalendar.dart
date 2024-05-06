import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icalendar_parser/icalendar_parser.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';

// Future<ICalendar> loadAndParseCalendar() async {
//   final icsString = await rootBundle.loadString('assets/your_file.ics');
//   final iCalendar = ICalendar.fromString(icsString);
//   return iCalendar;
// }

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
