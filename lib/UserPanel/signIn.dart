import 'package:flutter/material.dart';
import 'home.dart';
import 'package:fyp/UserPanel/UserpanelSignUp.dart';

class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
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
            padding: EdgeInsets.only(left: 310.0, top: 10.0),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 160.0,
              ),
              Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30.0,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.red.shade600,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

              secondsignIn()
            ],
          ),
        ]),
      ),
    );
  }
}
class secondsignIn extends StatefulWidget {
  @override
  _secondsignInState createState() => _secondsignInState();
}

class _secondsignInState extends State<secondsignIn> {
  bool _isChecked = false;
  void onChanged(bool value)
  {
    setState(() {
      _isChecked = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return    Container(
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
                      height: 16.0,
                    ),
                    TextFormField(
                      decoration:  InputDecoration(
                        labelText: "Email",
                        fillColor: Colors.white,
                        border:  OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(8.0),
                          borderSide:  BorderSide(
                          ),
                        ),
                        suffixIcon: Icon(Icons.email,color: Colors.red.shade600),
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.emailAddress,

                    ),
                    SizedBox(
                      height: 16.0,
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
                        suffixIcon: Icon(Icons.lock,color: Colors.red.shade600),
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),

                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool value){onChanged(value);},
                        ),
                        Text("Remember me",style: TextStyle(color: Colors.red.shade600),),
                        SizedBox(
                          width: 35.0,
                        ),
                        Text(
                          "Forgot password",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                            color: Colors.red.shade600
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 220.0),
                      child: FloatingActionButton(
                        onPressed: () {Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) => theme()
                            )
                        );},
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.red.shade600,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
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
                      height: 16.0,
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
                            borderRadius: BorderRadius.circular(9.0)),
                      ),
                    ),
                    SizedBox(
                      height: 110.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "  Create account",
                          style: TextStyle(color: Colors.white),
                        ),
                        MaterialButton(
                          onPressed: () {Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (BuildContext context) => UserPanelSignup()
                              )
                          );},
                          child: Text(
                            "Sign up ",
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

