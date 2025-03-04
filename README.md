# Adaptive TextField

![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Version](https://img.shields.io/badge/Version-1.0.0-orange.svg)

A smart and adaptive text field for Flutter applications that processes natural language to automatically create events and tasks from user input.

## Features

- **Natural Language Processing**: Converts everyday language into structured data
- **Adaptive UI**: Changes border color based on detected input type
- **Preview Cards**: Dynamic rendering of event and task cards
- **Debounced Input**: Optimized API calls with debounced text input

## Demo

![Adaptive TextField Demo](demo.mp4)

## How It Works

The application uses a text field that monitors user input and sends it to a language model (Gemini) for processing. Based on the response, it identifies whether the input describes:

- **Events**: Social gatherings, meetings, dates (pink UI elements)
- **Tasks**: Reminders, to-dos, and personal activities (blue UI elements)
- **Normal text**: Regular input that doesn't fit the above categories

## Input Examples

### Event Examples
```
"schedule lunch for me with Sarah at 9:00 pm, we'll discuss project ideas"
"schedule a date for Jenny and I at Central Park tomorrow at 5pm"
```

### Task Examples
```
"remind me to wash my car in the garage at 5pm"
"remind me to call my grandpa at 9am"
```

## Installation

```bash
# Clone this repository
git clone https://github.com/thatlinuxguyyouknow/adaptive-textfield.git

# Navigate to the project
cd adaptive-textfield

# Install dependencies
flutter pub get

# Run the app
flutter run
```

## Configuration

To use the natural language processing features, you need to:

1. Obtain an API key from Google's Generative AI (Gemini)
2. Add your key to the `apikey` variable in the `checkInputType.dart` file

```dart
String apikey = "YOUR_API_KEY_HERE";
```


## Dependencies

- `flutter`: UI toolkit
- `http`: Network requests
- `google_fonts`: Typography

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

