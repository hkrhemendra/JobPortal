// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  onLogin (){
    if(_selectedVal == 'Employer'){
      return Navigator.pushNamed(context, 'companydashboard');
    }else{
      return Navigator.pushNamed(context, 'dashboard');
    }
  }

  _LoginPageState(){
    _selectedVal = _dropdownList[0];
  }

  final _dropdownList = ['Employee', 'Employer'];
  String? _selectedVal = "Employee";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 180),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
                  ),
                ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.5,
                  right: 35,
                  left: 35,
                  ), 
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
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
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text('Sign In', style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 27,
                          fontWeight: FontWeight.w700
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            return onLogin();
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
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, 
                          child: Text(
                            "Sign Up", 
                            style: TextStyle(
                              decoration: TextDecoration.underline, 
                              fontSize: 18, color: Color(0xff4c505b),
                              ),
                            )
                          ),

                          TextButton(
                          onPressed: (){}, 
                          child: Text(
                            "Forgot Password", 
                            style: TextStyle(
                              decoration: TextDecoration.underline, 
                              fontSize: 18, color: Color(0xff4c505b),
                              ),
                            )
                          )
                      ],
                    )
                ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}