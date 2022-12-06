// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class RecentJobCard extends StatelessWidget {

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final String location;
  final String time;

  RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.location,
    required this.time,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'jobdescription');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 120,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    child: Image.asset(logoImagePath)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          jobTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                          ),
                          Text(
                            companyName,
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey[500],
                                ),
                              SizedBox(width: 5),
                              Text(location,),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timelapse_outlined,
                                color: Colors.grey[500],
                                ),
                              SizedBox(width: 5,),
                              Text(
                                time
                              ),
                            ],
                          )
                      ],
                    ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.bookmark_add)
                )
                  )
            ]),
          ),
        ),
      ),
    );
  }
}