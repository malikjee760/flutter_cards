import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MyHomeClass extends StatefulWidget {
  @override
  _MyHomeClassState createState() => _MyHomeClassState();
}

class _MyHomeClassState extends State<MyHomeClass> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterSwitch Demo"),
      ),
      body: Center(
        child: Container(
          child: FlutterSwitch(
            width: 125.0,
            height: 55.0,
            valueFontSize: 25.0,
            toggleSize: 45.0,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
          ),
        ),
      ),
    );
  }
}
