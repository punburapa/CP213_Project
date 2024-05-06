import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:table_calendar/table_calendar.dart';

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
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TableCalendar(
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2010, 10, 26),
            lastDay: DateTime.utc(2030, 10, 26),
          ),
        ],
      ),
    );
  }
}
