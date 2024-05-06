// import 'dart:html';

import 'package:flutter/material.dart';
import 'myCalendar.dart';
import 'clock.dart';
import 'supasit.dart';
import 'bodsuad.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List widgetOptions = [
    MyCalendar(),
    const supasit(),
    const bodsuad(),
    clock()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: widgetOptions[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(235, 101, 95, 28),
              icon: Icon(Icons.calendar_month),
              label: 'ปฏิทิน'),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(235, 101, 95, 28),
              icon: Icon(Icons.message),
              label: 'สุภาษิต'),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(235, 101, 95, 28),
              icon: Icon(Icons.front_hand),
              label: 'บทสวด'),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(235, 101, 95, 28),
              icon: Icon(Icons.timer),
              label: 'นาฬิกา')
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
