import 'package:flutter/material.dart';

class Graduate extends StatefulWidget {
  @override
  _GraduateState createState() => _GraduateState();
}

class _GraduateState extends State<Graduate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.red.shade600
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Graduate"),
        ),
        body:  Center(
          child: Scrollbar(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
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
                          items: <String>[
                            'MS Computer Science',
                            'MS Software Engineering',
                            'MPhill English',
                            'MPhill Zoloogy',
                            'MPhill Pharmacy',
                            'MPhill English',
                            'MPhill Psychology',
                            'MPhill Sociology'
                          ].map((String value) {
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
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("Matric DMC",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("Matric Certificate",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("FSc DMC",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("FSc Certificate",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("BSc DMC",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("MSc DMC",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("Student Cnic",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("Father Cnic",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("Domicile",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 50.0,
                      width: 330.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black)
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[

                              Text("GAT Result",style: TextStyle(
                                  color: Colors.black87
                              ),),
                              Icon(Icons.add_a_photo,color: Colors.red.shade600,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    SizedBox(
                      width: 330.0,
                      height: 50.0,
                      child: FlatButton(
                        onPressed: () {Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) => Graduate()
                            )
                        );},
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red.shade600,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9.0)),
                      ),
                    ),
                    SizedBox(height: 10.0,)
                  ],
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
