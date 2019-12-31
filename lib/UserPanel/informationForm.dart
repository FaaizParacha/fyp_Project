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
  void dispose() {
    tabController.dispose();
    super.dispose();
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
                  Tab(
                    text: "Academic Info",
                  ),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(50),
        ),
      ),
      body: TabBarView(
        children: [
          Scrollbar(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Program",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
//fillColor: Colors.green
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Domicle",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
//fillColor: Colors.green
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Applicant Name",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
//fillColor: Colors.green
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Applicant's Father Name",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
//fillColor: Colors.green
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Date Of Birth",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
//fillColor: Colors.green
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Student CNIC",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
//fillColor: Colors.green
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Text("Residential Adress",style: TextStyle(
                            color: Colors.black
                        ),),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextFormField(
                          maxLines: 2,
                          decoration:  InputDecoration(
                            fillColor: Colors.white,
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(8.0),
                              borderSide:  BorderSide(
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
          Scaffold(
            body: Container(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: 170.0,
                  height: 50.0,
                  color: Colors.red.shade600,
                  child: TextField(
                      decoration:  InputDecoration(
                        hintText : "SSC/Equivalent",
                        hintStyle: TextStyle(color: Colors.white),
                        border:  OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                ),
            ),
          ),
        ],
        controller: tabController,
      ),
    );
  }
}

