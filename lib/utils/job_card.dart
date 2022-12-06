// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_string_escapes, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';


class JobCard extends StatelessWidget {

  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int salaryRate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.salaryRate
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'jobdescription');
      },
      child: Padding(
        padding: const EdgeInsets.only(left:25.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 200,
            padding: EdgeInsets.all(12),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        child: Image.asset(logoImagePath),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'Part Time',
                            style: TextStyle(color: Colors.white),
                            ),
                          color: Colors.grey[500],
                        )
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      jobTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      ),
                  ),
                  Expanded(
                    child: Text(
                      '\Rs. '+salaryRate.toString() + ' /PA'
                      ),
                  )
              ]
            ),
          ),
        ),
      ),
    );
  }
}