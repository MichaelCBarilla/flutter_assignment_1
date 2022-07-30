import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String bodyText;

  const MyText(this.bodyText);

  @override
  Widget build(BuildContext context) {
    return Text(
      bodyText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
