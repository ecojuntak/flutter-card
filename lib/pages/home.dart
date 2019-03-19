import 'package:flutter/material.dart';
import 'package:flutter_card/components/card.dart';
import 'package:flutter_card/components/cis_header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CisHeader(),
        preferredSize: Size.fromHeight(70)
      ),
      body: Container(
        padding: EdgeInsets.all(3),
        child: ListView(
          children: <Widget>[
            CardTile("Total View", "12.5K", Icons.insert_chart, titleColor: Color(0xff31B057)),
            CardTile("Total User", "3K", Icons.person, titleColor: Color(0xff388BF2)),
            CardTile("Total Product", "4K", Icons.tablet, titleColor: Color(0xffFBAF18)),
          ],
        )
      )
    );
  }
}