import 'package:flutter/material.dart';

class EventPreviewCard extends StatelessWidget {
  EventPreviewCard({super.key});
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 700,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.pink.withOpacity(0.1), width: 2),
          boxShadow: [BoxShadow(color: Colors.pink.withOpacity(0.2))]),
      child:
          Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
    );
  }
}

class TaskPreviewCard extends StatelessWidget {
  TaskPreviewCard({super.key});
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 700,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.green.withOpacity(0.1), width: 2),
          boxShadow: [BoxShadow(color: Colors.pink.withOpacity(0.2))]),
    );
  }
}
