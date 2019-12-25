import 'package:flutter/material.dart';


class Shortlisting extends StatefulWidget {
  @override
  _ShortlistingState createState() => _ShortlistingState();
}

class _ShortlistingState extends State<Shortlisting> {
  List<String> items = List<String>.generate(30,(i)=>"Selected Candidate ${i+1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shortlisted Candidates"),
        backgroundColor: Colors.red.shade600,
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,int index){
            return Dismissible(
                key: Key(items[index]),
                onDismissed: (direction){
                  items.removeAt(index);
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("item dismiss"),
                  ));
                },
                background: Container(color: Colors.red),
                child: ListTile(
                  title: Text("${items[index]}"),
                )
            );
          }
      ),
    );
  }
}
