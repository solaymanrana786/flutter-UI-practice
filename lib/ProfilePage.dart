import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var topImageSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Colors.amber[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(image: AssetImage('assets/images/profileBg.png')),
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: IconButton(
                          alignment: Alignment.topLeft,
                          icon: SvgPicture.asset('assets/icons/backBlack.svg'),
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => ProfilePage()),
                            // );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Expanded(
                          child: Text(
                        "Profile",
                        style: TextStyle(color: Colors.white),
                      )),
                      Expanded(
                        child: FlatButton(
                            color: Colors.transparent,
                            textColor: Colors.red,
                            padding: EdgeInsets.all(5),
                            splashColor: Colors.transparent,
                            onPressed: () {
                              /*...*/
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("Save",
                                  style: TextStyle(fontSize: 12.0),
                                  textAlign: TextAlign.center),
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(0),
            color: Colors.red,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image(image: AssetImage("assets/images/bg.png"))],
              ),
            ),
          )
        ],
      ),
    );
  }
}
