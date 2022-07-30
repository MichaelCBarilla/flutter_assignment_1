import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function textControlHandler;
  
  const TextControl(this.textControlHandler);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: textControlHandler,
      child: Text('Click me to change the text'),
      textColor: Colors.white,
      color: Colors.blue,
    );
  }
}
