// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jobportal/utils/job_card.dart';
import 'package:jobportal/utils/recent_job_card.dart';


class UserDashboard extends StatefulWidget {
  const UserDashboard({ Key? key }) : super(key: key);

  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {

  final List jobsForYou = [
    ['Uber', 'UI Designer', 'assets/uber.png', 500000],
    ['Google', 'Website Designer', 'assets/google.png', 600000],
    ['Apple', 'Web Developer', 'assets/apple-logo.png', 900000],
  ];

  final List recentlyAdded = [
    ['Nike', 'Shoe Cleaner', 'assets/nike.png','Indore, Madhya Pradesh, India', '1 day ago'],
    ['Uber', 'UI Designer', 'assets/uber.png','Hyderabad, Telangana, India', '3 days ago'],
    ['Google', 'Website Designer', 'assets/google.png','Pune, Maharashtra, India', '1 month ago'],
    ['Apple', 'Web Developer', 'assets/apple-logo.png','Lucknow, Uttar Pradesh, India', '3 month ago'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Discover a New Path',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              )
            ),

            // search bar
            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12)
                  ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 40,
                        child: Image.asset(
                          'assets/search.png',
                          color: Colors.grey[600],
                          ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Job.....'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // recently add --> job tiles

            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
              child: Text(
                'Job Listing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              )
            ),

            Expanded(
              child: ListView.builder(
                itemCount: recentlyAdded.length,
                itemBuilder: ((context, index) {
                return RecentJobCard(
                    companyName: recentlyAdded[index][0],
                    jobTitle: recentlyAdded[index][1],
                    logoImagePath: recentlyAdded[index][2],
                    location: recentlyAdded[index][3],
                    time: recentlyAdded[index][4],
                );
              })
            ),
          )
        ]
        ),
      );
  }
}