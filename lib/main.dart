// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:test2/clock.dart';
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
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _HomePageState();
}

class _HomePageState extends State<homePage> {
  int currentIndex = 0;
  List widgetOptions = [Text('ปฏิทิน'), supasit(), bodsuad(), Example()];
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
