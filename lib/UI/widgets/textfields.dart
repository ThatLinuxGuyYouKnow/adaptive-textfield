import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  MainTextField({super.key});
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(color: Colors.pink.withOpacity(0.1))]),
    );
  }
}
