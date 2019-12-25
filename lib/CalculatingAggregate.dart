import 'package:flutter/material.dart';
import 'package:fyp/Shortlisting.dart';


class CalculatingAggregate extends StatefulWidget {
  @override
  _CalculatingAggregateState createState() => _CalculatingAggregateState();
}

class _CalculatingAggregateState extends State<CalculatingAggregate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcuating Aggregate"),
        backgroundColor: Colors.red.shade600,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 35.0,right: 35.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               TextFormField(
                  // autofocus: true,
                  cursorColor: Colors.black87,
                  decoration: InputDecoration(
                    labelText: "Matric Marks",
                  ),
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                cursorColor: Colors.black87,
                decoration: InputDecoration(
                    labelText: "FSc Marks"
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 350.0,
                child: FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => Shortlisting()
                        )
                    );
                  },
                  child: Text("Calculate ",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  color: Colors.red.shade600,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            ],

        ),
      )
    );
  }
}
