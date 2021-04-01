import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'TicketListPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(102, 74, 152, 1),
                      Color.fromRGBO(5, 17, 89, 1),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      alignment: Alignment.center,
                      icon: SvgPicture.asset('assets/icons/backBlack.svg'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketListPage()),
                        );
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Spacer(),
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Container(
                margin: EdgeInsets.only(top: 300),
                //color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 240,
                child: Container(
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/profilePic.png"),
                        fit: BoxFit.fill),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  height: 120,
                  width: 120,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.black.withOpacity(.6),
                        ),
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextFormField(
                  decoration: InputDecoration(
                      focusColor: Colors.red,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                      labelText: 'Full Name'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
