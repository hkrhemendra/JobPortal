import 'package:flutter/material.dart';
import 'package:jobportal/utils/user_applied.dart';


class DashboardCompany extends StatefulWidget {
  const DashboardCompany({ Key? key }) : super(key: key);

  @override
  _DashboardCompanyState createState() => _DashboardCompanyState();
}

class _DashboardCompanyState extends State<DashboardCompany> {

final List employeeList = [
    ['John Doe', 'UI Designer', 'assets/profile/man.png', 'B.Tech'],
    ['Random Name', 'Website Designer', 'assets/profile/man1.png', 'M.Tech'],
    ['Jane Doe', 'Web Developer', 'assets/profile/user.png', 'B.Tech'],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: employeeList.length,
                        itemBuilder: ((context, index) {
                        return UserApplied(
                          name: employeeList[index][0], 
                          jobTitle: employeeList[index][1], 
                          profileImagePath: employeeList[index][2], 
                          degree: employeeList[index][3]);
                      })
                    ),
                  )
              ]
            )
          );
  }
}