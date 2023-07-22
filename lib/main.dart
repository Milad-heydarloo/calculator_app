import 'package:calculator_app/widgetsa/widgetsa_clss.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const _apps());
}

class _apps extends StatelessWidget {
  const _apps({Key? key}) : super(key: key);

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
                      getbody('ac','ce','%','/'),
                      getbody('7','8','9','*'),
                      getbody('4','5','6','-'),
                      getbody('1','2','3','+'),
                      getbody('00','0','.','='),

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
}
