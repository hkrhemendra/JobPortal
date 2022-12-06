// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jobportal/drawer/user_header_drawer.dart';
import 'package:jobportal/users/user_dashboard.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {

    var container;

    if(currentPage == DrawerSections.dashboard){
      container = UserDashboard();
    }else if(currentPage == DrawerSections.logout){
      Navigator.pushNamed(context, 'login');
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Job Portal")
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                UserHeaderDrawer(),
                UserDrawerList()
              ]
              ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: container
    );
  }

  Widget UserDrawerList(){
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Dashboard", Icons.dashboard_outlined,
            currentPage == DrawerSections.dashboard ? true : false, 'dashboard'),
          menuItem(1, "Profile", Icons.person,
            currentPage == DrawerSections.profile ? true : false, 'profile'),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'login'),
            child: menuItem(1, "Logout", Icons.logout,
              currentPage == DrawerSections.logout ? true : false, 'logout'),
          ),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected, route){
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          // Navigator.pushNamed(context, route);

          Navigator.pop(context);
          setState(() {
            if(id == 1){
              currentPage = DrawerSections.dashboard; 
            }else if(id == 3){
              currentPage = DrawerSections.logout;
            }
          });

        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black
              )
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              )
            )
          ]),
        ),
      ),
    );
  }
}

enum DrawerSections{
  dashboard,
  profile,
  logout
}