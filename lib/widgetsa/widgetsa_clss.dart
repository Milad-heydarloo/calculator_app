import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color get_body_but(String txt) {
  //inja age text shabih on list bashe
  //amber bar migardeh nabashe abi
  if (is_operatour(txt)) {
    return Colors.amber;
  }
  return Colors.blue;
}

//in method ye vorodi migireh az jaii ke seda mishe
//to list check mikoneh age bashe
//true bar migardoneh
bool is_operatour(String txt) {
  var lis = ['ac', 'ce', '%', '/', '*', '-', '+', '='];
  for (var li in lis) {
    if (li == txt) {
      return true;
    }
  }
  return false;
}
//get text color operator
Color get_text_color(String tx) {
  if (is_operatour(tx)) {
    return Colors.black;
  }
  return Colors.white;
}

Widget getbody(String t1, String t2, String t3, String t4) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton(
        style: TextButton.styleFrom(
            backgroundColor: get_body_but('$t1'),
            shape:
                CircleBorder(side: BorderSide(width: 2, color: Colors.white))),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            textAlign: TextAlign.center,
            '$t1',
            style: TextStyle(
              fontSize: 20,
              color: get_text_color('$t1'),
            ),
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
            backgroundColor: get_body_but('$t2'),
            shape:
                CircleBorder(side: BorderSide(width: 2, color: Colors.white))),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            textAlign: TextAlign.center,
            '$t2',
            style: TextStyle(
              fontSize: 20,
              color: get_text_color('$t2'),
            ),
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          backgroundColor: get_body_but('$t3'),
          shape: CircleBorder(
            side: BorderSide(width: 2, color: Colors.white),
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
            style: TextStyle(
              fontSize: 20,
              color: get_text_color('$t3'),
            ),
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          backgroundColor: get_body_but('$t4'),
          shape: CircleBorder(
            side: BorderSide(width: 2, color: Colors.white),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            textAlign: TextAlign.center,
            '$t4',
            style: TextStyle(
              fontSize: 20,
              color: get_text_color('$t4'),
            ),
          ),
        ),
      ),
    ],
  );
}
