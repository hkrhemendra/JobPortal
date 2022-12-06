// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';


class JobDescription extends StatefulWidget {
  const JobDescription({ Key? key }) : super(key: key);

  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20)
          ),
        child: TextButton(
          onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    title: Text('Lorem Ipsum'),
                    content: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tollitur beneficium, tollitur gratia, quae sunt vincla concordiae.'
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'jobdescription');
                      }, child: Text('Cancel')),
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'dashboard');
                      }, child: Text('Ok')),
                    ],
                  ),
                );
              },
          child: Text(
            'Apply',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25
            ),
            )),
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.08,
                  ),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
                ),
                child: Image.asset('assets/hamburger.png'),
              ),
            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Software Developer',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Text(
                      'Google',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.grey[800]
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 80,
                  child: Image.asset('assets/google.png'),
                )
              ],
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.only(bottom:15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: Colors.grey[500],
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Mumbai',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.play_circle_outline_outlined,
                    color: Colors.grey[500],
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Starts Immediately',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.money_sharp,
                    color: Colors.grey[500],
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '₹ 10-15 LPA',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.timer,
                    color: Colors.grey[500],
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "29 Dec' 22",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Text(
              'About Google',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'Website',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15
                  ),
                ),
                Icon(
                  Icons.link,
                  color: Colors.blue,
                  size: 20.0,
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),

            Text(
              'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum \n It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
              textAlign: TextAlign.justify,
            ),

            SizedBox(
              height: 20,
            ),
           
            Text(
              "About Job",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Text(
              'Key responsibilities:',
              style: TextStyle(
                fontSize: 15
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Text(
              '1. Source candidates from job sites like Naukri, Linkedin, and other networking sites\n2. Understand jd from the client\n3. Interview candidates\n4. Line up an interview with the client\n5. Prepare the candidate for an interview\n6. Negotiate the offer'
            ),

            SizedBox(
              height: 20,
            ),
          ]
          ),
        ),
        )
    );
  }
}