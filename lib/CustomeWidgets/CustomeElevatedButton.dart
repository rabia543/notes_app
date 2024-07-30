import 'package:flutter/material.dart';
class Customelevatedbutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  Customelevatedbutton({
    Key? key,
    required this.text,
    required this.onPressed
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
      onPressed: onPressed,
      child: Text(text,style:TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ), ),style: ElevatedButton.styleFrom(
        backgroundColor:  Color(0xFFDAC0A3),
        minimumSize: Size(370,59)
    ),);
  }
}
