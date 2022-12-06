// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart'; 

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({ Key? key }) : super(key: key);

  @override
  _RegisterationPageState createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {

  onRegister (){
    if(_selectedVal == 'Employer'){
      return Navigator.pushNamed(context, '');
    }else{
      return Navigator.pushNamed(context, 'dashboard');
    }
  }

  _RegisterationPageState(){
    _selectedVal = _dropdownList[0];
  }

  final _dropdownList = ['Employee', 'Employer'];
  String? _selectedVal = "Employee";

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/register.png'), fit: BoxFit.cover),
       ),
       child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 120),
              child: Text(
                "Welcome\nNew User",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                ),
              ),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  right: 35,
                  left: 35,
                ),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Full Name",
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
                      hintText: "Email",
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
                      hintText: "Phone",
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
                      hintText: "Email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Confirm Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  DropdownButtonFormField(
                    value: _selectedVal,
                    items: _dropdownList.map((e) => DropdownMenuItem(child: Text(e), value: e)).toList(), 
                    onChanged: (val){
                      setState(() {
                        _selectedVal = val as String;
                      });
                    }
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Sign UP', style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 27,
                          fontWeight: FontWeight.w700
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            return onRegister();
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