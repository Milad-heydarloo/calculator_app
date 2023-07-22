import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getbody(String t1, String t2, String t3, String t4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton(
        style: TextButton.styleFrom(
            shape: CircleBorder(side: BorderSide(width: 1))),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            textAlign: TextAlign.center,
            '$t1',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
            shape: CircleBorder(side: BorderSide(width: 1))),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            textAlign: TextAlign.center,
            '$t2',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          shape: CircleBorder(
            side: BorderSide(
              width: 1,
            ),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(
            5,
          ),
          child: Text(
            textAlign: TextAlign.center,
            '$t3',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          shape: CircleBorder(
            side: BorderSide(width: 1),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            textAlign: TextAlign.center,
            '$t4',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    ],
  );
}
