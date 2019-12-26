import 'package:flutter/material.dart';


class Shortlisting extends StatefulWidget {
  @override
  _ShortlistingState createState() => _ShortlistingState();
}

class _ShortlistingState extends State<Shortlisting> {
  List<String> items = List<String>.generate(30,(i)=>"${i+1}:    Selected Candidate ");
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Shortlisted Candidates"),
      backgroundColor: Colors.red.shade600,
    ),
      body:ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
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
