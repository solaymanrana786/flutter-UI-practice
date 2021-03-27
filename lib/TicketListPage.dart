import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'SegmentedControl.dart';

class TicketListPage extends StatefulWidget {
  @override
  _TicketListPageState createState() => _TicketListPageState();
}

class _TicketListPageState extends State<TicketListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tickets'),
        elevation: 0,
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: SvgPicture.asset('assets/icons/backBlack.svg'),
        ),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                height: 40.0,
                // color: Colors.red,
                child: SegmentedControl(),
              )),
          Container(
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Dates',
                    style: TextStyle(
                      fontSize: 17.0, // insert your font size here
                    ),
                  ),
                  Spacer(),
                  Text(
                    'QTY',
                    style: TextStyle(
                      fontSize: 17.0, // insert your font size here
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Bid Amount',
                    style: TextStyle(
                      fontSize: 17.0, // insert your font size here
                    ),
                  ),
                ],
              )),
          Expanded(
              //color: Colors.white,
              child: BidListView()),
        ],
      ),
    );
  }
}

class BidListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  final dates = [
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
    "May 21, 3:24 Pm Est",
  ];
  final qty = [
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
    "1",
  ];
  final amount = [
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
    "500",
  ];

  return ListView.builder(
    itemCount: dates.length,
    itemBuilder: (context, index) {
      if (index == 0) {
        return Column(
          children: <Widget>[list(dates, index, qty, amount)],
        );
      } else {
        return list(dates, index, qty, amount);
      }
    },
  );
}

Column list(
    List<String> dates, int index, List<String> qty, List<String> amount) {
  return Column(children: <Widget>[
    Container(
        padding: EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(dates[index]),
            Spacer(),
            Text(qty[index]),
            Spacer(),
            Text(amount[index])
          ],
        )),
    Divider(),
  ]);
}
