import 'package:flutter/material.dart';

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> with TickerProviderStateMixin {

  TabController tabController;
  @override
  void initState() {
  super.initState();
  tabController = TabController(length: 2, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information Form"),
        backgroundColor: Colors.red.shade600,
        bottom: PreferredSize(
          child: Column(
            children: <Widget>[
              TabBar(
                indicatorColor: Colors.white,
                controller: tabController,
                tabs: [
                  Tab(text: "Personal Info"),

                  Tab(text: "Academic Info",),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(50),
        ),

      ),
    );
  }
}
class personalInfo extends StatefulWidget {
  @override
  _personalInfoState createState() => _personalInfoState();
}

class _personalInfoState extends State<personalInfo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Text("Program",style: TextStyle(
            color: Colors.black
          ),)
        ],
      ),
    );
  }
}
