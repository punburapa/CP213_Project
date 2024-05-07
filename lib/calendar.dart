// import 'dart:html';
import 'dart:convert';
import 'dart:io';
import 'package:icalendar_parser/icalendar_parser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:table_calendar/table_calendar.dart';
import 'event.dart';
import 'dart:developer' as developer;

class BuddistCalendar extends StatefulWidget {
  const BuddistCalendar({Key? key}) : super(key: key);

  @override
  State<BuddistCalendar> createState() => _BuddistCalendarState();
}

class _BuddistCalendarState extends State<BuddistCalendar> {
  DateTime today = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Event>> events = {};
  TextEditingController _eventController = TextEditingController();
  late final ValueNotifier<List<Event>> _selectedEvent;

  @override
  void initState() {
    super.initState();
    _selectedDay = today;
    _selectedEvent = ValueNotifier(_getEventsForDay(_selectedDay!));
    _loadMockData();
    developer.log('test');
    // _loadJsonData();
  }

  void _loadJsonData() {}

  void _loadMockData() {
    events.update(DateTime.utc(2024, 05, 15), (value) {
      value
          .add(Event("🌓 วันพระ ขึ้น ๘ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)"));
      return value;
    },
        ifAbsent: () =>
            [Event("🌓 วันพระ ขึ้น ๘ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)")]);

    events.update(DateTime.utc(2024, 05, 22), (value) {
      value.add(Event(
          "🌕☸ วันพระ วันวิสาขบูชา ขึ้น ๑๕ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)"));
      return value;
    },
        ifAbsent: () => [
              Event(
                  "🌕☸ วันพระ วันวิสาขบูชา ขึ้น ๑๕ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)")
            ]);

    events.update(DateTime.utc(2024, 05, 30), (value) {
      value.add(Event(
          "🌗☸ วันพระ วันอัฏฐมีบูชา แรม ๘ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)"));
      return value;
    },
        ifAbsent: () => [
              Event(
                  "🌗☸ วันพระ วันอัฏฐมีบูชา แรม ๘ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)")
            ]);

    events.update(DateTime.utc(2024, 06, 06), (value) {
      value
          .add(Event("🌑 วันพระ แรม ๑๕ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)"));
      return value;
    },
        ifAbsent: () =>
            [Event("🌑 วันพระ แรม ๑๕ ค่ำ เดือน ๖ ปีมะโรง (ปกติมาส ปกติวาร)")]);
  }

  void _onDaySelected(DateTime day, DateTime focusday) {
    setState(() {
      today = day;
      focusday = focusday;
      _selectedDay = day;
      _selectedEvent.value = _getEventsForDay(day);
    });
  }

  List<Event> _getEventsForDay(DateTime day) {
    events.putIfAbsent(day, () => []);
    return events[day]!;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     showDialog(
        //         context: context,
        //         builder: (context) {
        //           return AlertDialog(
        //             scrollable: true,
        //             title: Text("Event Name"),
        //             content: Padding(
        //               padding: EdgeInsets.all(8),
        //               child: TextField(
        //                 controller: _eventController,
        //               ),
        //             ),
        //             actions: [
        //               ElevatedButton(
        //                 onPressed: () {
        //                   events.update(_selectedDay!, (value) {
        //                     value.add(Event(_eventController.text));
        //                     return value;
        //                   }, ifAbsent: () => [Event(_eventController.text)]);
        //                   Navigator.of(context).pop();
        //                   _selectedEvent.value =
        //                       _getEventsForDay(_selectedDay!);
        //                 },
        //                 child: Text("Submit"),
        //               )
        //             ],
        //           );
        //         });
        //   },
        //   child: const Icon(Icons.add),
        // ),
        body: content(),
      ),
    );
  }

  Widget content() {
    return Column(
      children: [
        Image.asset('assets/img/lotus_1.png'),
        Container(
          child: TableCalendar(
            locale: "en_US",
            rowHeight: 43,
            headerStyle: const HeaderStyle(
                formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: DateTime.now(),
            firstDay: DateTime.utc(2020, 10, 16),
            lastDay: DateTime.utc(2056, 10, 16),
            onDaySelected: _onDaySelected,
            eventLoader: _getEventsForDay,
          ),
        ),
        SizedBox(height: 8.0),
        Expanded(
          child: ValueListenableBuilder(
              valueListenable: _selectedEvent,
              builder: (context, value, _) {
                return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        key: ValueKey(value[index]),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.red,
                          alignment: Alignment.centerRight,
                          padding: EdgeInsets.only(right: 20.0),
                          child: Icon(Icons.delete, color: Colors.white),
                        ),
                        onDismissed: (direction) {
                          setState(() {
                            value.removeAt(index);
                          });
                        },
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            onTap: () => print(""),
                            title: Text(value[index].eventName),
                            subtitle: Text("Date"),
                          ),
                        ),
                      );
                    });
              }),
        )
      ],
    );
  }
}
