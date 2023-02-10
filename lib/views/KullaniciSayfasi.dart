import 'package:deneme1/views/MyHome.dart';
import 'package:flutter/material.dart';

class KullaniciSayfasi extends StatefulWidget {
  final int clicked;
  KullaniciSayfasi.empty() : clicked = 0;
  KullaniciSayfasi({required this.clicked});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => KSayfasi();
}

class KSayfasi extends State<KullaniciSayfasi> {
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  double _number1 = 0;
  double _number2 = 0;
  double result = 0;
  String _yazi = "";
  String stringResult() {
    return _yazi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_yazi),
            Container(
              height: 50,
            ),
            Text(
              result.toString(),
              style: TextStyle(fontSize: 50),
            ),
            Container(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Need a number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: TextField(
                controller: _controller2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: "Need a number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      _number1 = double.parse(_controller1.text);
                      _number2 = double.parse(_controller2.text);
                      result = _number1 + _number2;
                      setState(() {
                        stringResult();
                      });
                    },
                    icon: Icon(Icons.add_circle_outline_outlined)),
                IconButton(
                    onPressed: () {
                      _number1 = double.parse(_controller1.text);
                      _number2 = double.parse(_controller2.text);
                      result = _number1 - _number2;
                      setState(() {
                        stringResult();
                      });
                    },
                    icon: Icon(Icons.remove_circle_sharp)),
                TextButton(
                    onPressed: (() {
                      _number1 = double.parse(_controller1.text);
                      _number2 = double.parse(_controller2.text);
                      result = _number1 / _number2;
                      setState(() {
                        stringResult();
                      });
                    }),
                    child: Text("Division")),
                TextButton(
                    onPressed: (() {
                      _number1 = double.parse(_controller1.text);
                      _number2 = double.parse(_controller2.text);
                      result = _number1 * _number2;
                      setState(() {
                        stringResult();
                      });
                    }),
                    child: Text("Multiplication")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
