import 'package:deneme1/views/MyHome.dart';
import 'package:flutter/material.dart';

class KullaniciSayfasi extends StatefulWidget {
  final int tiklamaSayisi;
  KullaniciSayfasi({this.tiklamaSayisi})

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() => KSayfasi();
}

class KSayfasi extends State<KullaniciSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Bu bilgi başka sayfadan geldi: ")],
      ),
    );
  }
}
