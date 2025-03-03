import 'package:adaptive_textfield/UI/widgets/previewCard.dart';
import 'package:adaptive_textfield/UI/widgets/textfields.dart';
import 'package:adaptive_textfield/logic/checkInputType.dart';
import 'package:adaptive_textfield/logic/debouncer.dart';
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
  final Debouncer _debouncer = Debouncer(delay: Duration(milliseconds: 500));

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

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
                  AnimatedContainer(
                    duration: Duration(seconds: 2),
                    child: EventPreviewCard(
                        event_name: eventData['event_type'] ?? '',
                        event_Description:
                            eventData['data']['description'] ?? '',
                        event_location:
                            eventData['data']['eventLocation'] ?? '',
                        event_time: eventData['data']['time'] ?? '',
                        attendees:
                            (eventData['data']['attendees'] as List<dynamic>?)
                                    ?.join(", ") ??
                                ""),
                  )
                else if (eventData.containsKey('event_type') &&
                    eventData['event_type'] == 'Task')
                  TaskPreviewCard(
                    task_name: eventData['event_type'] ?? '',
                    task_Description: eventData['data']['description'] ?? '',
                    task_time: eventData['data']['time'] ?? '',
                    task_location: eventData['data']['eventLocation'] ?? '',
                  ),
                SizedBox(
                  height: 50,
                ),
                MainTextField(
                  borderColor: eventData.isNotEmpty
                      ? (eventData['event_type'] == 'Event'
                          ? Colors.pink
                          : eventData['event_type'] == 'Task'
                              ? Colors.blue
                              : Colors.black)
                      : Colors.black,
                  onEditComplete: (string) {},
                  onEdit: (value) async {
                    setState(() {});
                    enteredText = value;
                    if (expandNow) {
                      _debouncer.call(() async {
                        print('debouncer hit');
                        final result = await checkInputType(enteredText);
                        setState(() {
                          eventData = result;
                        });
                      });
                    }
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
//remind me to call my grandpa at 9
// remind me to wash my car in the garage once i get back at 8
