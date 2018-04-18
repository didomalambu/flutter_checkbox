
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}




class MyApp extends StatefulWidget {

  MyAppState createState() => new MyAppState();
}
class MyAppState extends State<MyApp> {
  bool checkBoxValue = false;
  String  actionText = "Default";
  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
      title: "MySampleApplication",
      home: new Scaffold
        (
          appBar: new AppBar(
              title: new Text("Checkbox"),
              actions: <Widget>
              [

              ]
          ),
          body: new Center(
            child: new Column(
              children: <Widget>
              [

                new Checkbox(
                    value: checkBoxValue,
                    onChanged: (bool newValue){
                      setState(() {
                        checkBoxValue = newValue;
                        print(checkBoxValue);
                      });
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}