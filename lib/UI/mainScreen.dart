import 'package:adaptive_textfield/UI/widgets/previewCard.dart';
import 'package:adaptive_textfield/UI/widgets/textfields.dart';
import 'package:adaptive_textfield/logic/checkInputType.dart';
import 'package:adaptive_textfield/logic/inputWorthiness.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String enteredText = "";
  Map<String, dynamic> eventData = {};

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    bool expandNow = checkIfInputIsWorthy(enteredText);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(bottom: screenHeight * 0.08),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (eventData.containsKey('event_type') &&
                    eventData['event_type'] == 'Event')
                  EventPreviewCard(
                    event_name: eventData['event_type'] ?? '',
                    event_Description: eventData['data']['description'] ?? '',
                    event_location: eventData['data']['eventLocation'] ?? '',
                    event_time: eventData['data']['time'] ?? '',
                  )
                else if (eventData.containsKey('event_type') &&
                    eventData['event_type'] == 'Task')
                  TaskPreviewCard(),
                SizedBox(
                  height: 50,
                ),
                MainTextField(
                  onEditComplete: (string) {},
                  onEdit: (value) async {
                    enteredText = value;

                    if (expandNow) {
                      final result = await checkInputType(enteredText);
                      setState(() {
                        eventData = result;
                      });
                    }

                    setState(() {});
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// schedule a date for mira and i at unilag lagoon front at
