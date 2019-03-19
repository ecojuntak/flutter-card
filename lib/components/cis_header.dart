import 'package:flutter/material.dart';

class CisHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/photo.jpg")
                  ),
                  shape: BoxShape.circle
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        "Eko S",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )
                    ),
                    Text(
                        "11415009 - D4TI",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                            color: Colors.black87
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.notifications,
                      size: 30,
                    )
                ),
                Icon(
                  Icons.dashboard,
                  size: 30,
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: Colors.black,
                width: 0.5
            )
        ),
      ),
    );
  }

}