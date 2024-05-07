import 'package:flutter/material.dart';

class supasit extends StatefulWidget {
  const supasit({super.key});

  @override
  State<supasit> createState() => _Mysupasit();
}

class _Mysupasit extends State<supasit> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const AlwaysScrollableScrollPhysics(), // Enable scrolling even when content is not overflowed
      scrollDirection: Axis.vertical, // Vertical scrolling
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildBottomSheet(
                      title: 'อุฏฐาตา วินฺทเต ธน์',
                      content: '''



คนขยัน ย่อมหาทรัพย์ได้



''',
                    );
                  },
                );
              },
              child: const Text(
                'อุฏฐาตา วินฺทเต ธน์',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildBottomSheet(
                      title: 'พาโล อปริณายโก',
                      content: '''



คนโง่ คนพาล ไม่ควรเป็นผู้นำ



''',
                    );
                  },
                );
              },
              child: const Text(
                'พาโล อปริณายโก',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildBottomSheet(
                      title: 'อตฺตา หิ อตฺตโน นาโถ',
                      content: '''



ตนเป็นที่พึ่งของตน



''',
                    );
                  },
                );
              },
              child: const Text(
                'อตฺตา หิ อตฺตโน นาโถ',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildBottomSheet(
                      title: 'ปญฺญาว ธเนน เสยุโย',
                      content: '''



ปัญญาย่อมประเสริฐกว่าทรัพย์



''',
                    );
                  },
                );
              },
              child: const Text(
                'ปญฺญาว ธเนน เสยุโย',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _buildBottomSheet(
                      title: 'อตฺตา หเว ซิตี้ เสยุโย',
                      content: '''



ชนะตนนั่นแหละประเสริฐกว่า



''',
                    );
                  },
                );
              },
              child: const Text(
                'อตฺตา หเว ซิตี้ เสยุโย',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSheet({required String title, required String content}) {
    return SizedBox(
      height: 500,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                  fontSize: 25, color: Color.fromARGB(251, 3, 2, 2)),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(
                  fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: buttonStyle,
              child: const Text(
                'ปิด',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(400, 70),
    backgroundColor: Color.fromARGB(255, 239, 204, 29),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))));
