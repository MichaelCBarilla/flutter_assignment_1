// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import 'package:flutter_assignment_1/text_control.dart';
import 'package:flutter_assignment_1/text_output.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var _bodyText = 'This is the first body text.';
  var _firstText = true;

  void _changeBodyText() {
    setState(() {
      _bodyText = _firstText
          ? 'And this is the other one...'
          : 'This is the first body text.';
    });
    _firstText = !_firstText;
    return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextOutput(_bodyText),
              TextControl(_changeBodyText)
            ],
          ),
        ),
      ),
    );
  }
}
