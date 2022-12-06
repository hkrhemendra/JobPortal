// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class UploadJob extends StatefulWidget {
  const UploadJob({ Key? key }) : super(key: key);

  @override
  _UploadJobState createState() => _UploadJobState();
}

class _UploadJobState extends State<UploadJob> {

  final TextEditingController jobTitleController= TextEditingController();

  String jobTitle = '';

  @override
  void dispose() {
    jobTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[300],
        child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    right: 35,
                    left: 35,
                  ),
                  child: Column(children: [
                    TextField(
                      controller: jobTitleController,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Job Title",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Location",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "CTC",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Apply By",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      maxLines: 8,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "About Job",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Key Skills",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "No. of openings",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text('Upload Job', style: TextStyle(
                            color: Color(0xff4c505b),
                            fontSize: 27,
                            fontWeight: FontWeight.w700
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                jobTitle = jobTitleController.text;
                              });
                              showDialog(
                                context: context, 
                                builder: (context) => AlertDialog(
                                  title: Text(jobTitle),
                                  content: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tollitur beneficium, tollitur gratia, quae sunt vincla concordiae.'
                                  ),
                                  actions: [
                                    TextButton(onPressed: (){
                                      Navigator.pushNamed(context, 'companydashboard');
                                    }, child: Text('ok')),
                                  ],
                                ),
                                );
                            },
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                backgroundColor: Color(0xff4c505b), // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                          )
                        ],
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ]),
                ),
              )
            ],
          ),
      ),
    );
  }
}