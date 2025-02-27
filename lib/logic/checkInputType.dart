import "dart:io";
import 'dart:convert';
import 'package:http/http.dart' as http;

String preprompt =
    "You are an expert natural language processor, you are tasked with determining what type of input this message is, there are three types, Type 1 > Task ie remind me to wash my car in the garage at 5pm. Type 2 > Event ie schedule lunch for me with Terrence Tao at 9:00 pm, we'll discuss String theory. Type 3 > Normal ie everything else that doesnt fit the previous two defined classes. Once you ascertain the Event Type. You will return the data in the format {event_type:eventType, data{time:eventTime, description:eventDescription, eventLocation, atendees*: you, co_attendee}}. The field marked with the aesterick can be permissibly ignored for event_type: TaskALL fields bar evernt_type my be permissibly not returned for event_type:normal. If able to dtermine event type but not containing required data(yet) simply return event type and present data, return fields even if empty.Crucially, your response will be parsed directly, make usre to return JSOn, no Codeblocks. The message is als follows: ";
String apikey = "";
checkInputType(String input) async {
  final requestBody = {
    "contents": [
      {
        "parts": [
          {"text": input}
        ]
      }
    ]
  };
  var response = await http.post(
      Uri.parse(
          "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro:generateContent?key=${apikey}"),
      headers: {"Content-type": "Application/json"},
      body: jsonEncode(requestBody));

  return response;
}
