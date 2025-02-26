import 'package:adaptive_textfield/UI/widgets/textfields.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(bottom: screenHeight * 0.01),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [MainTextField()],
        ),
      ),
    );
  }
}
