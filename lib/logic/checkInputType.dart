import "dart:io";
import 'dart:convert';
import 'package:http/http.dart' as http;

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
      body: {jsonEncode(requestBody)});
}
