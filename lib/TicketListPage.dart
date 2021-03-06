import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ProfilePage.dart';
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
        backgroundColor: Colors.white,
        title: Text('Tickets'),
        elevation: 0,
        leading: IconButton(
          alignment: Alignment.topLeft,
          icon: SvgPicture.asset('assets/icons/backBlack.svg'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Container(
                height: 80.0,
                // color: Colors.red,
                child: SegmentedControl(),
              )),
          Container(
              padding:
                  EdgeInsets.only(left: 70, right: 40, top: 10, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Dates',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: 20),
                  Text(
                    'QTY',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Bid Amount',
                    style: TextStyle(
                      fontSize: 15.0,
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
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
    "\$500",
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
    Divider(),
    Container(
        padding: EdgeInsets.only(left: 20.0, right: 40, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(dates[index]),
            Spacer(),
            Text(qty[index]),
            Spacer(
              flex: 2,
            ),
            Text(amount[index])
          ],
        )),
    // Divider(),
  ]);
}
