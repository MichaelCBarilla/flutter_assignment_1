import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String bodyText;

  const TextOutput(this.bodyText);

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
