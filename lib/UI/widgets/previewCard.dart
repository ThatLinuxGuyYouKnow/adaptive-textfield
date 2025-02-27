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
          border: Border.all(color: Colors.pink.withOpacity(0.1), width: 2),
          boxShadow: [BoxShadow(color: Colors.pink.withOpacity(0.2))]),
    );
  }
}
