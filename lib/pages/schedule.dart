import 'package:flutter/material.dart';
import 'package:flutter_card/components/day_indicator.dart';
import 'package:flutter_card/components/schedule_card.dart';

class SchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DayIndicator(),
          Container(
            padding: EdgeInsets.all(8),
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                ScheduleCard(
                  Color(0xff31B057),
                  "08:00",
                  "08:50",
                  "Dasar Pemrograman [T]",
                  "GD 711",
                  "Dasar Pointer.pptx",
                ),
                ScheduleCard(
                  Color(0xff388BF2),
                  "10:00",
                  "11:50",
                  "Dasar Pemrograman [P]",
                  "GD 726",
                  "Dasar Pointer.pdf",
                ),
                ScheduleCard(
                  Color(0xffFC8338),
                  "13:00",
                  "13:50",
                  "Keamanan Sistem [T]",
                  "GD 923",
                  "SHA 256.pptx",
                ),
                ScheduleCard(
                  Color(0xffE52A34),
                  "15:00",
                  "15:50",
                  "Sistem Operasi [P]",
                  "GD 711",
                  "Linux Kernel.pptx",
                ),
                ScheduleCard(
                  Color(0xff1C9440),
                  "15:00",
                  "15:50",
                  "Sistem Operasi [P]",
                  "GD 711",
                  "Linux Kernel.pptx",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}