import 'package:flutter/material.dart';

class MainHomeView extends StatefulWidget {
  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Butona basma sayınız: "),
            Text("$counter")
            ]
          ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label:Text("Bas"),
        icon:Icon(Icons.thumb_up),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
