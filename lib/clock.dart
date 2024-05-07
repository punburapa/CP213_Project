import 'dart:async';
import 'dart:js_util';
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
  int _inputmin = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 0), () {});
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer.cancel();
        }
      });
    });
    _isRunning = true;
  }

  void _stopTimer() {
    _timer.cancel();
    _isRunning = false;
  }

  void _resetTimer() {
    setState(() {
      _secondsRemaining = _inputmin;
      _isRunning = false;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _secondsRemaining ~/ 60;
    int seconds = _secondsRemaining % 60;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$minutes นาที:$seconds  วินาที',
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
                  _stopTimer();
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
                labelText: 'เวลานับถอยหลัง (นาที)',
                labelStyle: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            onChanged: (value) {
              setState(() {
                _inputmin = (int.tryParse(value) ?? 0) * 60;
                _secondsRemaining = _inputmin;
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
    backgroundColor: Color.fromARGB(255, 239, 204, 29),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))));
