import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventPreviewCard extends StatelessWidget {
  final String event_name;
  final String event_Description;
  final String event_time;
  final String event_location;
  final IconData? suggestedIcon;
  final String? attendees;

  EventPreviewCard(
      {super.key,
      this.event_name = "",
      this.event_Description = "",
      this.event_location = "",
      this.event_time = "",
      this.suggestedIcon = Icons.meeting_room,
      this.attendees});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: Colors.pink.withOpacity(0.15), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.08),
            offset: const Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Colors.pink.withOpacity(0.15),
            offset: const Offset(0, 6),
            blurRadius: 15,
            spreadRadius: -5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  event_name,
                  style: GoogleFonts.ubuntu(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF333333),
                  ),
                ),
                Icon(
                  Icons.table_bar,
                  color: Colors.pink.withOpacity(0.3),
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              event_Description,
              style: GoogleFonts.ubuntu(
                fontSize: 16,
                color: const Color(0xFF666666),
                height: 1.5,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.location_on_rounded,
                    color: Colors.pink.shade400,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    event_location,
                    style: GoogleFonts.ubuntu(
                      fontSize: 15,
                      color: const Color(0xFF666666),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.access_time_rounded,
                    color: Colors.pink.shade400,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  event_time,
                  style: GoogleFonts.ubuntu(
                    fontSize: 15,
                    color: const Color(0xFF666666),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              attendees ?? 'you',
              style: GoogleFonts.ubuntu(
                backgroundColor: Colors.grey[50],
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.pink.shade300,
                  ),
                  child: const Text("Edit"),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade400,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Text("Add to Calendar"),
                ),
              ],
            ),
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
// schedule a date for me with Mira, we'll go to Yabatech sports center, maybe
