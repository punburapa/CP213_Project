import 'package:flutter/material.dart';

class bodsuad extends StatefulWidget {
  const bodsuad({super.key});

  @override
  State<bodsuad> createState() => _Mybodsuad();
}

class _Mybodsuad extends State<bodsuad> {
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
                'บทสวดนมัสการบูชาพระพุทธเจ้า',
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
นะโม ตัสสะ ภะคะวะโต 
อะระหะโต สัมมาสัมพุทธัสสะ 
นะโม ตัสสะ ภะคะวะโต 
อะระหะโต สัมมาสัมพุทธัสสะ
นะโม ตัสสะ ภะคะวะโต 
อะระหะโต สัมมาสัมพุทธัสสะ

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
                'บทสวดมนต์บูชาพระรัตนตรัย',
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
อะระหัง สัมมาสัมพุทโธ ภะคะวา 
พุทธัง ภะคะวันตัง อภิวาเทมิ
สวากขาโต ภะคะวะตา 
ธัมโม ธัมมังนะมัสสามิ
สุปะฏิปปันโน ภะคะวะโต 
สาวะกะสังโฆ สังฆัง นะมามิ

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
                'บทสวดมนต์อาราธนาศีล 5',
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
                                    fontSize: 23,
                                    color: Color.fromARGB(251, 3, 2, 2)),
                                '''
มะยัง ภันเต วิสุง วิสุง รักขะนัตถายะ 
ติสะระเณนะสะหะ ปัญจะ สีลานิ ยาจามะ
ทุติยัมปิ มะยังภันเต วิสุง วิสุง รักขะนัตถายะ 
ติสะระเณนะ สะหะ ปัญจะ สีลานิ ยาจามะ
ตะติยัมปิ มะยังภันเต วิสุง วิสุง รักขะนัตถายะ 
ติสะระเณนะ สะหะ ปัญจะ สีลานิ ยาจามะ

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
                'คำบูชาพระรัตนตรัย',
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
อิมินา สักกาเรนะ พุทธัง อะภิปูชะยามิ
อิมินา สักกาเรนะ ธัมมัง อะภิปูชะยามิ
อิมินา สักกาเรนะ สังฆัง อะภิปูชะยามิ 




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
                'บทสวดมนต์แผ่เมตตาให้แก่ผู้อื่น',
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
สัพเพ สัตตา
อะเวรา โหนตุ 
อัพยาปัชฌา โหนตุ 
อะนีฆา โหนตุ 
สุขี อัตตานัง ปะริหะรันตุ 


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
