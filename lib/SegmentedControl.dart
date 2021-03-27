import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class SegmentedControl extends StatefulWidget {
  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int segmentedControlValue = 1;

  Widget segmentedControl() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CupertinoSlidingSegmentedControl(
          padding: EdgeInsets.all(5),
          groupValue: segmentedControlValue,
          backgroundColor: Color.fromRGBO(242, 243, 248, 1),
          thumbColor: Color.fromRGBO(244, 112, 101, 1),
          children: const <int, Widget>{
            0: Padding(
              padding: EdgeInsets.all(5),
              child: Text('Sales'),
            ),
            1: Text('Asks'),
            2: Text('Bids')
          },
          onValueChanged: (value) {
            setState(() {
              segmentedControlValue = value;
            });
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return segmentedControl();
  }
}
