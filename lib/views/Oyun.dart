import 'dart:async';

import 'package:flutter/material.dart';

class Oyun extends StatefulWidget {
  @override
  State<Oyun> createState() => _OyunState();
}

class _OyunState extends State<Oyun> {
  double _timer = 5;
  int _counter = 0;
  bool _buttonPressed = false;
  bool _loopActive = false;
  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timer > 0) {
        setState(() {
          _timer--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void _increaseCounterWhilePressed() async {
    if (_loopActive) return; // check if loop is active

    _loopActive = true;

    while (_buttonPressed) {
      // do your thing
      setState(() {
        _counter++;
      });

      // wait a second
      await Future.delayed(Duration(milliseconds: 50));
    }

    _loopActive = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Oyun"),),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _counter.toString(),
            style: TextStyle(color: Colors.black, fontSize: 50),
          ),
          AnimatedContainer(
            width: _timer * 100,
            color: _timer <= 2 ? Colors.red : Colors.green,
            height: 5,
            duration: const Duration(seconds: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Listener(
                onPointerDown: (details) {
                  _buttonPressed = true;
                  _increaseCounterWhilePressed();
                },
                onPointerUp: (details) {
                  _buttonPressed = false;
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent, border: Border.all()),
                    child: Text(
                      "Basılı TUT!",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  },
                  child: Text("+1")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter += 2;
                    });
                  },
                  child: Text("+2")),
            ],
          ),
          ElevatedButton(
              onPressed: _startCountDown,
              child: Text("Oyunu Başlat/Baştan Başlat"))
        ],
      ),
    ));
  }
}
