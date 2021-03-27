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
            0: Text(
              'Sales',
              style: TextStyle(fontSize: 17),
            ),
            1: Text(
              'Asks',
              style: TextStyle(fontSize: 17),
            ),
            2: Text(
              'Bids',
              style: TextStyle(fontSize: 17),
            )
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
