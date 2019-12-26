import 'package:flutter/material.dart';
import 'package:fyp/UserPanel/Shortlisting.dart';
import 'package:fyp/UserPanel/informationForm.dart';
import 'package:fyp/UserPanel/notification.dart';
import 'package:fyp/UserPanel/underGraduate.dart';

class theme extends StatefulWidget {
  @override
  _themeState createState() => _themeState();
}

class _themeState extends State<theme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.red.shade600
      ),
      home: selectCategory(),
    );
  }
}



class selectCategory extends StatefulWidget {
  @override
  _selectCategoryState createState() => _selectCategoryState();
}

class _selectCategoryState extends State<selectCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person,color: Colors.red.shade600,),
                backgroundColor: Colors.white,
              ),
              accountName: Text("faaiz"),
              accountEmail: Text("faaiz11@gmail.com"),
            ),
            ListTile(
              title: Text("Merit List"),
              leading: Icon(Icons.view_list),
              onTap: () {Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => Shortlisting()
                  )
              );},
            ),
            ListTile(
              title: Text("Notifications"),
              leading: Icon(Icons.notifications),
              onTap: () {Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => notify()
                  )
              );},

            ),
            ListTile(
              title: Text("information form"),
              leading: Icon(Icons.view_list),
              onTap: () {Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => InfoForm()
                  )
              );},
            ),
            Divider(height: 20.0,),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
      body:  Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 200.0,
              ),
               Container(
                 padding: EdgeInsets.all(10.0),
                 width: 330.0,
                 height: 50.0,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(8.0),
                     border: Border.all(color: Colors.black)
                 ),
                 child: DropdownButtonHideUnderline(
                   child: DropdownButton<String>(
                     iconSize: 30.0,

                    hint: Text("Select Catrgory",style: TextStyle(
                        color: Colors.black87
                    ),),
                    items: <String>['Under Graduate', 'Post Graduate'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
              ),
                 ),
               ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 330.0,
                height: 50.0,
                child: FlatButton(
                  onPressed: () {Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => undergraduate()
                      )
                  );},
                  child: Text(
                    "Apply Now",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red.shade600,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0)),
                ),
              ),
            Padding(padding: EdgeInsets.only(top: 130.0)),
              Image(image: AssetImage("images/design.png"))
            ],
          ),
      ),
    );
  }
}
