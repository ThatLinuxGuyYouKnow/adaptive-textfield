import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPreviewCard extends StatelessWidget {
  final String event_name;
  final String event_Description;
  final String event_time;
  final String event_location;
  EventPreviewCard(
      {super.key,
      this.event_name = "",
      this.event_Description = "",
      this.event_location = "",
      this.event_time = ""});
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 700,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          border: Border.all(color: Colors.pink.withOpacity(0.1), width: 2),
          boxShadow: [BoxShadow(color: Colors.pink.withOpacity(0.2))]),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        child: Column(
          children: [
            Text(
              event_name,
              style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              event_Description,
              style: GoogleFonts.ubuntu(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              spacing: 10,
              children: [
                Icon(Icons.location_city),
                Text(
                  event_location,
                  style: GoogleFonts.ubuntu(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              event_time,
              style: GoogleFonts.ubuntu(),
            )
          ],
        ),
      ),
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
