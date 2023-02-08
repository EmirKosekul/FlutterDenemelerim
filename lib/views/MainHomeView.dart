import 'package:deneme1/views/KullaniciSayfasi.dart';
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
        child: Column(children: [
          Text("Butona basma sayınız: "),
          Text("$counter"),
          ElevatedButton(
              onPressed: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>KullaniciSayfasi(clicked: counter)));
                setState(() {
                  counter = 0;
                });
              },
              child: Text("Temizle"))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Bas"),
        icon: Icon(Icons.thumb_up),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
