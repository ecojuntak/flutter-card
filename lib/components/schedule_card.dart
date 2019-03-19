import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  Color _mainColor;
  String _startTime;
  String _endTime;
  String _course;
  String _location;
  String _fileName;

  ScheduleCard(
      this._mainColor,
      this._startTime,
      this._endTime,
      this._course,
      this._location,
      this._fileName
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(20)
        ),
        boxShadow: [
          new BoxShadow(
              color: Color(0xffdbebff),
              blurRadius: 20,
              offset: new Offset(0, 5)
          )
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        leading: Container(
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(width: 4, color: _mainColor)
                      )
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      children: <Widget>[
                        Text(
                          _startTime,
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'NeoSans'
                          ),
                        ),
                        Text(
                          _endTime,
                          style: TextStyle(
                              fontSize: 25
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 270,
              height: 75,
              decoration: BoxDecoration(
                  color: _mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            _course,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.attach_file,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                _fileName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                          Text(
                            _location,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}