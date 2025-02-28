import "dart:io";
import 'dart:convert';
import 'package:http/http.dart' as http;

String preprompt = '''
You are an expert natural language processor, tasked with determining the type of input message.

There are three types:
1. Task - Examples: 
   - "remind me to wash my car in the garage at 5pm"
   
2. Event - Examples:
   - "schedule lunch for me with Terrence Tao at 9:00 pm, we'll discuss String theory"
   - "schedule a date for Jenny and I"
   
3. Normal - Everything else that doesn't fit the previous two defined classes

Return the data in this JSON format:
{
  "event_type": "eventType",
  "data": {
   "icon":iconRelevantToEventYouSuggest(must be material icon ie Icons.add, Icons.meeting, Icons.remove)
    "time": "eventTime",
    "description": "eventDescription",
    "eventLocation": "location",
    "attendees": ["you", "co_attendee"]
  }
}



Notes:
- The "attendees" field can be omitted for event_type "Task"
- For description, you should generate a rational, concise one sentence summary of the event(ie Date with Jenny)
- For icon, you should return a rational material IconData ie Icons.add
- All fields except event_type may be omitted for event_type "Normal"
- If you can determine event type but not all required data, return the event type with any available data
- Return fields even if empty
- Your response must be valid JSON with no code blocks or markdown

GOOD EXAMPLE:
{
  "event_type": "Event",
  "data": {
    "icon":iconRelevantToEventYouSuggest
    "time": null,
    "description": "schedule a date",
    "eventLocation": null,
    "attendees": ["you"]
  }
}

BAD EXAMPLE:
```json
{"event_type": "Event","data": {"time": null, "description": "schedule a date", "eventLocation": null, "attendees": ["you"]}}
The message yu analyse starts thus:
''';
String apikey = ";
checkInputType(String input) async {
  final requestBody = {
    "contents": [
      {
        "parts": [
          {"text": preprompt + input}
        ]
      }
    ]
  };
  var response = await http.post(
      Uri.parse(
          "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${apikey}"),
      headers: {"Content-type": "Application/json"},
      body: jsonEncode(requestBody));
  if (response.statusCode == 200) {
    print('response is good');
    var responseData = json.decode(response.body);
    String text = responseData['candidates'][0]['content']['parts'][0]['text'];

    // Remove code block markers and extract just the JSON
    text = text.replaceAll('```json', '').replaceAll('```', '').trim();

    // Parse the cleaned text as JSON
    try {
      Map<String, dynamic> parsedJson = json.decode(text);
      print('Parsed JSON: $parsedJson');
      return parsedJson;
    } catch (e) {
      print('Error parsing JSON: $e');
      print('Raw text after cleaning: $text');
      return {'error': 'Could not parse response as JSON'};
    }
  } else {
    throw Error();
  }
}
