import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/CalculatingAggregate.dart';


class UploadDocs extends StatefulWidget {
  @override
  _UploadDocsState createState() => _UploadDocsState();
}

class _UploadDocsState extends State<UploadDocs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload your documents"),
          backgroundColor: Colors.red.shade600
      ),
      body: Container(
          padding: EdgeInsets.only(left: 30.0,right: 30.0),
        child: Column(
         //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ListTile(
              title: Icon(Icons.add_a_photo),
              leading: Text("Upload your matric DMC",style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
             height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Icon(Icons.add_a_photo),
              leading: Text("Upload your matric Certificate",style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Icon(Icons.add_a_photo),
              leading: Text("Upload your FSc DMC",style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Icon(Icons.add_a_photo),
              leading: Text("Upload your FSc Certificate",style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Icon(Icons.add_a_photo),
              leading: Text("Upload your Domicile",style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            ListTile(
              title: Icon(Icons.add_a_photo),
              leading: Text("Upload your Bachelors Transcript",style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),),
            ),

            SizedBox(
              width: 350.0,
              child: FlatButton(
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) => CalculatingAggregate()
                      )
                  );
                },
                child: Text("Submit ",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                color: Colors.red.shade600,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
          ],
        )
      ),
    );
  }
}
