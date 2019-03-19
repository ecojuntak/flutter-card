import 'package:flutter/material.dart';

class DayIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DayIndicatorState();
  }
}

class DayIndicatorState extends State<DayIndicator> {
  var _days = ["Monday", "Tuesday", "Wednesday", "Thusday", "Friday"];
  var _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 20),
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              setState(() {
                if(_selected == 0) {
                  _selected = 4;
                } else {
                  _selected--;
                }
              });
            },
            iconSize: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                _days[_selected],
                style: TextStyle(
                    fontSize: 18
                ),
              ),
              Text(
                "February 28, 2019",
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ],
          ),
          IconButton(
            padding: EdgeInsets.only(left: 20),
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              setState(() {
                if(_selected == 4) {
                  _selected = 0;
                } else {
                  _selected++;
                }
              });
            },
            iconSize: 25,
          ),
        ],
      ),
    );
  }

}