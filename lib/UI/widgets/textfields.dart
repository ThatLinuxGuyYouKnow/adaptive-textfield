import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  MainTextField({super.key});
  Widget build(BuildContext context) {
    InputBorder ThisInputBorder;
    return Container(
      height: 100,
      width: 700,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.pink.withOpacity(0.1), width: 2),
          boxShadow: [BoxShadow(color: Colors.pink.withOpacity(0.2))]),
      child: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            border: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.pink.withOpacity(0.1)),
            ),
          ),
        ),
      )),
    );
  }
}
