import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'signIn.dart';

class UserPanelSignup extends StatefulWidget {
  @override
  _UserPanelSignInState createState() => _UserPanelSignInState();
}

class _UserPanelSignInState extends State<UserPanelSignup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Material(
          child: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: null,
            ),
            Container(
              padding: EdgeInsets.only(left: 290.0, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    child: Image(image: AssetImage("images/kustlogo.gif")),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                ],
              ),
            ),
            Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                 Row(
                    children: <Widget>[
                      SizedBox(
                        width: 35.0,
                      ),
                      Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.red.shade600,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),

                secondSignup()
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class secondSignup extends StatefulWidget {
  @override
  _secondSignupState createState() => _secondSignupState();
}

class _secondSignupState extends State<secondSignup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35.0, right: 35.0),
      child: Stack(
        children: <Widget>[
          Form(
              child: Theme(
            data: ThemeData(
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle:
                        TextStyle(color: Colors.black87, fontSize: 20.0))),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12.0,
                ),
                 TextFormField(
                    decoration:  InputDecoration(
                      labelText: "Full Name",
                      fillColor: Colors.white,
                      border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(8.0),
                        borderSide:  BorderSide(
                        ),
                      ),
                      suffixIcon: Icon(Icons.person,color: Colors.red.shade600),
                    ),
                    keyboardType: TextInputType.text,
                    autofocus: false,
                  ),

                SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Icon(Icons.email,color: Colors.red.shade600),
                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Password",
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.red.shade600),
                    //fillColor: Colors.green
                  ),

                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Confirm Password",
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.red.shade600),
                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 220.0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red.shade600,
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Colors.black87,
                    )),
                    Text("  or  "),
                    Expanded(
                        child: Divider(
                      color: Colors.black87,
                    )),
                  ],
                ),
                SizedBox(
                  height: 12.0,
                ),
                SizedBox(
                  width: 250.0,
                  height: 40.0,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up with Google",
                      style: TextStyle(color: Colors.red.shade600),
                    ),
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      " Already have an account",
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) => signIn()
                          )
                      );},
                      child: Text(
                        "Sign in ",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
