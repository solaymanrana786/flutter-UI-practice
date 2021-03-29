import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
              top: 250,
              child: Container(
                //color: Colors.white,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/profilePic.png"),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                height: 100,
                width: 100,
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
          ],
        ),
      ],
    );
  }
}
