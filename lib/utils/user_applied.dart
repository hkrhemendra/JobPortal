// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';


class UserApplied extends StatelessWidget {

  final String name;
  final String jobTitle;
  final String profileImagePath;
  final String degree;

  UserApplied({
    required this.name,
    required this.jobTitle,
    required this.profileImagePath,
    required this.degree
  });

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      height: 120,
      width: 300,
      // color: Colors.amber,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                child: Image.asset(profileImagePath),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
                )
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                jobTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                degree
              )
            ],
          )
        ]
      ),
    );
  }
}