import 'package:easy_utilities/core/palette.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key key,
      @required this.text,
      this.onButtonPressed})
      : super(key: key);

  final String text;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: FlatButton(
        onPressed: () => onButtonPressed(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            text,
            style: eBodyText,
          ),
        ),
      ),
    );
  }
}

class SmallRoundedButton extends StatelessWidget {
  const SmallRoundedButton(
      {Key key,
      @required this.text,
      this.onButtonPressed})
      : super(key: key);

  final String text;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: FlatButton(
        onPressed: () => onButtonPressed(),
        child: Text(text),
        color: Colors.lightBlue[200],
      ),
    );
  }
}
