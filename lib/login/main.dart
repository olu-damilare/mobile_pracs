

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.fromLTRB(20.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Welcome \n back!",
            style: TextStyle(
              fontFamily: 'Abhaya',
              fontSize: 55.0,
              fontWeight: FontWeight.bold,
                   )
            ),
        SizedBox(height: 20.0),
        Container(
          width: 350.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email"),
                    SizedBox(height: 10.0),
                    TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your email address',
                ),
              ),
                    SizedBox(height: 20.0),
                    Text("Password"),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                      ),
                    ),
                  ],
                )
              ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Forgot your password?",
                style: TextStyle(
                decoration: TextDecoration.underline,
                ),
              )
              ]
            ),
        SizedBox(height: 15.0),
            Container(
              width : 400,
              height: 50.0,
              child : RaisedButton(
                  onPressed: () {  },
                color: Colors.black,
                  child : Text(
                      "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Abhaya',
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),) ,
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                  "or",
                  textAlign: TextAlign.center,
                ),
            ),
            SizedBox(height: 15.0),
            Row(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child:
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/facebook.jpg',
                              height: 15.0,
                              width: 15.0,
                            ),
                            SizedBox(width: 15.0),
                            Text(
                                "Facebook",
                              style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),

                  ),
              SizedBox(width: 50.0),
                Container(
                  width: 150.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Row(
                      children: [
                          Image.asset(
                            'assets/google.jpg',
                            height: 15.0,
                            width: 15.0,
                          ),
                        SizedBox(width: 20.0),
                        Text(
                            "Google",
                          style: TextStyle(
                              fontWeight: FontWeight.w500
                          ),
                        ),
                       ],
                     ),
                  ),

               ),

              ],
            ),
             SizedBox(height: 40.0),
             Center(child: Text(
                 "Don't have an account?",
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 15.0,
                   fontWeight: FontWeight.w500
                 )
             ),
             ),
             SizedBox(height: 5.0),
             Container(
               width : 400,
               height: 50.0,
               child :  FlatButton(
                     onPressed: () {  },
                     color: Colors.grey[300],
                     child : Text(
                       "Create an Account",
                       style: TextStyle(
                         color: Colors.black,
                       ),) ,
                   ),

               ),

          ],
        ),
      )
    );
  }
}
