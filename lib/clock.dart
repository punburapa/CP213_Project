import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class clock extends StatefulWidget {
  @override
  _clock createState() => _clock();
}

class _clock extends State<clock> {
  late Timer _timer;
  int _secondsRemaining = 0;
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
        }
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
  }

  void _resetTimer() {
    setState(() {
      _secondsRemaining = 0;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_secondsRemaining วินาที',
            style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  if (!_isRunning) {
                    _startTimer();
                    _isRunning = true;
                  }
                },
                child: Text(
                  'เริ่ม',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  if (_isRunning) {
                    _stopTimer();
                    _isRunning = false;
                  }
                },
                child: Text('หยุด',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                style: buttonStyle,
                onPressed: () {
                  _resetTimer();
                  _isRunning = false;
                },
                child: Text('รีเซ็ต',
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ],
          ),
          SizedBox(height: 100),
          TextFormField(
            style: TextStyle(fontSize: 30),
            decoration: InputDecoration(
                labelText: 'เวลานับถอยหลัง (วินาที)',
                labelStyle: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              setState(() {
                _secondsRemaining = int.tryParse(value) ?? 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(20, 70),
    primary: Color.fromARGB(255, 239, 204, 29),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))));
