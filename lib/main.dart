import 'package:flutter/material.dart';

void main() {
  runApp(const _app_start());
}

class _app_start extends StatefulWidget {
  const _app_start({Key? key}) : super(key: key);

  @override
  State<_app_start> createState() => _app_startState();
}

class _app_startState extends State<_app_start> {
  var input = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'calculator',
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '$input',
                          textAlign: TextAlign.end,
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.amber,
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      getbody('ac', 'ce', '%', '/'),
                      getbody('7', '8', '9', '*'),
                      getbody('4', '5', '6', '-'),
                      getbody('1', '2', '3', '+'),
                      getbody('00', '0', '.', '='),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getbody(String t1, String t2, String t3, String t4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: get_body_but('$t1'),
              shape: CircleBorder(
                  side: BorderSide(width: 2, color: Colors.white))),
          onPressed: () {
            _getinput('$t1');
          },
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
              shape: CircleBorder(
                  side: BorderSide(width: 2, color: Colors.white))),
          onPressed: () {
            if (is_operatour(t2) == false) {
              _getinput('$t2');
            } else if (t2 == 'ce') {
              //method substring anasor reshte ro be dast miyareh
              //to in khat code ma az 0 romin andis ta tool kole - 1 ro dakhel d mirizim
              var d = input.substring(0, input.length - 1);
              setState(() {
                input = d;
              });
            } else if (input == '') {
              setState(() {
                input = '';
              });
            }
          },
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
          onPressed: () {

            _getinput('$t3');
          },
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
          onPressed: () {
            _getinput('$t4');
          },
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

  void _getinput(String s) {
    setState(() {
      input = input + s;
    });
  }

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
}
