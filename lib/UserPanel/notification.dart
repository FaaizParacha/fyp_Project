import 'package:flutter/material.dart';

class notify extends StatefulWidget {
  @override
  _notifyState createState() => _notifyState();
}

class _notifyState extends State<notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: Text("Notifications"),
      ),
    );
  }
}
