import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final TextEditingController fieldController;
  MainTextField({super.key, required this.fieldController});
  Widget build(BuildContext context) {
    InputBorder ThisInputBorder;
    return Container(
      height: 100,
      width: 700,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.pink.withOpacity(0.3), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.2),
          ),
          BoxShadow(color: Colors.pink.withOpacity(0.7))
        ],
      ),
      child: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            border: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.pink.withOpacity(0.1),
                width: 3,
              ),
            ),
          ),
        ),
      )),
    );
  }
}
