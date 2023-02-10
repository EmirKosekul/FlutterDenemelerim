// ignore_for_file: prefer_const_constructors
import 'package:deneme1/views/MainHomeView.dart';
import 'package:deneme1/views/Oyun.dart';
import 'package:flutter/material.dart';
import 'KullaniciSayfasi.dart';

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  PageController _pageController = PageController();
  int _index = 0;
  List<Widget> _screens = [MainHomeView(), KullaniciSayfasi.empty(),Oyun()];
  void onPageChanged(int index) {
    setState(() {
      _index = index;
    });
  }

  void onItemTapped(int i) {
    _pageController.jumpToPage(i);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightBlueAccent,
          onTap: onItemTapped,
          currentIndex: _index,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined), label: "Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad_outlined), label: "Game"),
          ]),
    );
  }
}
