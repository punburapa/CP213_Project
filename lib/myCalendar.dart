// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:icalendar_parser/icalendar_parser.dart';
// import 'package:table_calendar/table_calendar.dart';

// import 'event.dart';

// // Future<ICalendar> loadAndParseCalendar() async {
// //   final icsString = await rootBundle.loadString('assets/your_file.ics');
// //   final iCalendar = ICalendar.fromString(icsString);
// //   return iCalendar;
// // }

// class MyCalendar extends StatefulWidget {
//   const MyCalendar({super.key});

//   @override
//   State<MyCalendar> createState() => _MyCalendarState();
// }

// class _MyCalendarState extends State<MyCalendar> {
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   late final ValueNotifier<List<Event>> _selectedEvents;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;
//   Map<DateTime, List<Event>> events = {};

//   //test add events

//   void initState() {
//     super.initState();

//     _selectedDay = _focusedDay;
//     _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
//     final icsObj =
//         ICalendar.fromLines(File('assets/my_file.ics').readAsLinesSync());
//     print(jsonEncode(icsObj.toJson()));

//     // Add a test event
//     events[_selectedDay!] = [Event('Test Event')];
//   }

//   void dispose() {
//     _selectedEvents.dispose();
//     super.dispose();
//   }

//   List<Event> _getEventsForDay(DateTime day) {
//     return events[day] ?? [];
//   }

//   void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
//     if (!isSameDay(_selectedDay, selectedDay)) {
//       setState(() {
//         _selectedDay = selectedDay;
//         _focusedDay = focusedDay;
//       });

//       _selectedEvents.value = _getEventsForDay(selectedDay);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
//           TableCalendar(
//             rowHeight: 45,
//             headerStyle:
//                 HeaderStyle(formatButtonVisible: false, titleCentered: true),
//             availableGestures: AvailableGestures.all,
//             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//             eventLoader: _getEventsForDay,
//             focusedDay: _focusedDay,
//             firstDay: DateTime.utc(2010, 10, 26),
//             lastDay: DateTime.utc(2030, 10, 26),
//             onDaySelected: _onDaySelected,
//             onPageChanged: (focusedDay) {
//               _focusedDay = focusedDay;
//             },
//           ),
//           // ElevatedButton(
//           //     onPressed: () {
//           //       events.addAll({
//           //         _selectedDay!: [Event("Test")]
//           //       });
//           //       // Navigator.of(context).pop;
//           //       _selectedEvents.value =
//           //           _getEventsForDay(DateTime.utc(2024, 05, 15));
//           //     },
//           //     child: Text("Yay")),
//           ValueListenableBuilder<List<Event>>(
//               valueListenable: _selectedEvents,
//               builder: (context, value, _) {
//                 return ListView.builder(
//                     itemCount: value.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 4,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(),
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: ListTile(
//                             onTap: () => print('${value[index]}'),
//                             title: Text('${value[index]}')),
//                       );
//                     });
//               })
//         ],
//       ),
//     );
//   }
// }
