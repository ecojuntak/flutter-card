import 'package:flutter/material.dart';
import 'package:flutter_card/components/cis_header.dart';
import 'package:flutter_card/pages/schedule.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CisHeader(),
        preferredSize: Size.fromHeight(70),
      ),
      body: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: PreferredSize(
            child: AppBar(
              bottom: TabBar(
                tabs: myTabs
              ),
              elevation: 3,
              automaticallyImplyLeading: true,
              backgroundColor: Colors.white,
            ),
            preferredSize: Size.fromHeight(50)
          ),
          body: TabBarView(
            children: [
              SchedulePage(),
              Text("wkwkkwkwkwk"),
            ]
          ),
        ),
      )
    );
  }
}

final List<Widget> myTabs = <Widget>[
  Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Text(
      "Schedules",
      style: TextStyle(
          color: Colors.black,
          fontSize: 18
      ),
    ),
  ),
  Container(
    padding: EdgeInsets.symmetric(vertical: 12),
    child: Text(
      "Courses",
      style: TextStyle(
          color: Colors.black,
          fontSize: 18
      ),
    ),
  ),
];