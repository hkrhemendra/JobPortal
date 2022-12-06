import 'package:flutter/material.dart';
import 'package:jobportal/company/dashboard_company.dart';
import 'package:jobportal/company/upload_job.dart';
import 'package:jobportal/drawer/user_header_drawer.dart';
import 'package:jobportal/utils/user_applied.dart';


class CompanyDashboard extends StatefulWidget {
  const CompanyDashboard({ Key? key }) : super(key: key);

  @override
  _CompanyDashboardState createState() => _CompanyDashboardState();
}

class _CompanyDashboardState extends State<CompanyDashboard> {

  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {

    var container;

    if(currentPage == DrawerSections.dashboard){
        container = DashboardCompany();
    }else if(currentPage == DrawerSections.uploadJob){
        container = UploadJob();
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
          menuItem(2, "Upload Job", Icons.drive_folder_upload_outlined,
            currentPage == DrawerSections.uploadJob ? true : false, 'uploadJob'),
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
            }else if(id == 2){
              currentPage = DrawerSections.uploadJob;
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
  uploadJob,
  logout
}