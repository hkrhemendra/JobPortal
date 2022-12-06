// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserHeaderDrawer extends StatefulWidget {
  const UserHeaderDrawer({ Key? key }) : super(key: key);

  @override
  _UserHeaderDrawerState createState() => _UserHeaderDrawerState();
}

class _UserHeaderDrawerState extends State<UserHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/profile/man.png')
                )
            ),
          ),
          Text(
            "John Doe",
            style: TextStyle(
              color: Colors.white, fontSize: 20
              ),
          ),
          Text(
            "man@demo.com", 
            style: TextStyle(
              fontSize: 14,
              color: Colors.white
              ),)
        ],
      ),
    );
  }
}