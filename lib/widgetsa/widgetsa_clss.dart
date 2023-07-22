

import 'package:flutter/material.dart';

class widgets_as extends StatelessWidget {
  const widgets_as({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('data'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('data'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('data'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('data'),
        ),
      ],
    );
  }
}
