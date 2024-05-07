import 'package:flutter/material.dart';

class bodsuad extends StatefulWidget {
  const bodsuad({Key? key}) : super(key: key); // Adding the key parameter

  @override
  State<bodsuad> createState() => _Mybodsuad();
}

class _Mybodsuad extends State<bodsuad> {
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
                      title: 'บทสวดนมัสการบูชาพระพุทธเจ้า',
                      content: '''
นะโม ตัสสะ ภะคะวะโต 
อะระหะโต สัมมาสัมพุทธัสสะ 
นะโม ตัสสะ ภะคะวะโต 
อะระหะโต สัมมาสัมพุทธัสสะ
นะโม ตัสสะ ภะคะวะโต 
อะระหะโต สัมมาสัมพุทธัสสะ

''',
                    );
                  },
                );
              },
              child: const Text(
                'บทสวดนมัสการบูชาพระพุทธเจ้า',
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
                      title: 'บทสวดมนต์บูชาพระรัตนตรัย',
                      content: '''
อะระหัง สัมมาสัมพุทโธ ภะคะวา 
พุทธัง ภะคะวันตัง อภิวาเทมิ
สวากขาโต ภะคะวะตา 
ธัมโม ธัมมังนะมัสสามิ
สุปะฏิปปันโน ภะคะวะโต 
สาวะกะสังโฆ สังฆัง นะมามิ
''',
                    );
                  },
                );
              },
              child: const Text(
                'บทสวดมนต์บูชาพระรัตนตรัย',
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
                      title: 'บทสวดมนต์อาราธนาศีล 5',
                      content: '''
มะยัง ภันเต วิสุง วิสุง รักขะนัตถายะ 
ติสะระเณนะสะหะ ปัญจะ สีลานิ ยาจามะ
ทุติยัมปิ มะยังภันเต วิสุง วิสุง รักขะนัตถายะ 
ติสะระเณนะ สะหะ ปัญจะ สีลานิ ยาจามะ
ตะติยัมปิ มะยังภันเต วิสุง วิสุง รักขะนัตถายะ 
ติสะระเณนะ สะหะ ปัญจะ สีลานิ ยาจามะ
''',
                    );
                  },
                );
              },
              child: const Text(
                'บทสวดมนต์อาราธนาศีล 5',
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
                      title: 'คำบูชาพระรัตนตรัย',
                      content: '''
อิมินา สักกาเรนะ พุทธัง อะภิปูชะยามิ
อิมินา สักกาเรนะ ธัมมัง อะภิปูชะยามิ
อิมินา สักกาเรนะ สังฆัง อะภิปูชะยามิ
''',
                    );
                  },
                );
              },
              child: const Text(
                'คำบูชาพระรัตนตรัย',
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
                      title: 'บทสวดมนต์แผ่เมตตาให้แก่ผู้อื่น',
                      content: '''
สัพเพ สัตตา
อะเวรา โหนตุ 
อัพยาปัชฌา โหนตุ 
อะนีฆา โหนตุ 
สุขี อัตตานัง ปะริหะรันตุ 
''',
                    );
                  },
                );
              },
              child: const Text(
                'บทสวดมนต์แผ่เมตตาให้แก่ผู้อื่น',
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
  minimumSize: const Size(400, 70),
  backgroundColor: const Color.fromARGB(255, 239, 204, 29),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
  ),
);
