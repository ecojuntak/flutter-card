import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  String title;
  String total;
  IconData icon;
  Color titleColor;

  CardTile(this.title, this.total, this.icon, {this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: this.titleColor
                ),
              ),
              Text(
                this.total,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF25282B)
                ),
              )
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Icon(
                this.icon,
                color: this.titleColor,
                size: 100,
              ),
            )
          ],
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      ),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20)
        ),
        boxShadow: [
          new BoxShadow(
            color: Color(0xffdbebff),
            blurRadius: 100,
            offset: new Offset(0, 5)
          )
        ],
      ),
    );
  }

}