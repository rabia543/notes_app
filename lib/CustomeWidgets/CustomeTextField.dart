import 'package:flutter/material.dart';
class Custometextfield extends StatelessWidget {
  final TextEditingController controller;
  Custometextfield({
    Key? key,
    required this.controller,
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40)))
      ),
    );
  }
}
