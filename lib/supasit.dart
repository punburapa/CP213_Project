import 'package:flutter/material.dart';

class supasit extends StatefulWidget {
  const supasit({super.key});

  @override
  State<supasit> createState() => _Mysupasit();
}

class _Mysupasit extends State<supasit> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              style: buttonStyle,
              child: const Text(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
                'อุฏฐาตา วินฺทเต ธน์',
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 500,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(251, 3, 2, 2),
                                ),
                                '''



คนขยัน ย่อมหาทรัพย์ได้



                              '''),
                            ElevatedButton(
                              style: buttonStyle,
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(251, 3, 2, 2)),
                                  'ปิด'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              style: buttonStyle,
              child: const Text(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
                'พาโล อปริณายโก',
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 500,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(251, 3, 2, 2)),
                                '''



คนโง่ คนพาล ไม่ควรเป็นผู้นำ



                              '''),
                            ElevatedButton(
                              style: buttonStyle,
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(251, 3, 2, 2)),
                                  'ปิด'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              style: buttonStyle,
              child: const Text(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
                'อตฺตา หิ อตฺตโน นาโถ',
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 500,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(251, 3, 2, 2)),
                                '''



ตนเป็นที่พึ่งของตน



                              '''),
                            ElevatedButton(
                              style: buttonStyle,
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(251, 3, 2, 2)),
                                  'ปิด'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              style: buttonStyle,
              child: const Text(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
                'ปญฺญาว ธเนน เสยุโย',
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 500,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(251, 3, 2, 2)),
                                '''



ปัญญาย่อมประเสริฐกว่าทรัพย์ 



                              '''),
                            ElevatedButton(
                              style: buttonStyle,
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(251, 3, 2, 2)),
                                  'ปิด'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              style: buttonStyle,
              child: const Text(
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(251, 3, 2, 2)),
                'อตฺตา หเว ซิตี้ เสยุโย',
              ),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                      height: 500,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text(
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(251, 3, 2, 2)),
                                '''



ชนะตนนั่นแหละประเสริฐกว่า



                              '''),
                            ElevatedButton(
                              style: buttonStyle,
                              child: const Text(
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(251, 3, 2, 2)),
                                  'ปิด'),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(400, 70),
    primary: Color.fromARGB(255, 239, 204, 29),
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))));
