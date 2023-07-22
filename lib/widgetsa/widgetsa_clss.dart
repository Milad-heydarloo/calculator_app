import 'package:flutter/material.dart';

Widget getbody(String t1, String t2, String t3, String t4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '$t1',
            style:
                TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'dm'),
          ),
        ),
      ), TextButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '$t2',
            style:
                TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'dm'),
          ),
        ),
      ), TextButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '$t3',
            style:
                TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'dm'),
          ),
        ),
      ), TextButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            '$t4',
            style:
                TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'dm'),
          ),
        ),
      ),
    ],
  );
}
