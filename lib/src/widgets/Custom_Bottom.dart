import 'package:flutter/material.dart';

class Custom_buttom extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const Custom_buttom({Key? key, required this.text,required this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(50),
    ),
    child: Text(text, style: TextStyle(fontSize: 20)),
    onPressed: onClicked,
  );
}

