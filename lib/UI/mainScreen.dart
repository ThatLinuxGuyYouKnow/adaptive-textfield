import 'package:adaptive_textfield/UI/widgets/previewCard.dart';
import 'package:adaptive_textfield/UI/widgets/textfields.dart';
import 'package:adaptive_textfield/logic/inputWorthiness.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatefulWidget {
  Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final TextEditingController messageController = TextEditingController();
  String enteredText = "";
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    bool textHasbeenEntered = messageController.text.split(" ").length >= 2;

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
                EventPreviewCard(),
                SizedBox(
                  height: textHasbeenEntered ? 400 : 50,
                ),
                MainTextField(
                  onEdit: (enteredText) {
                    if (checkIfInputIsWorthy(enteredText)) {
                      print('edited');
                    } else {
                      print('nope!');
                      null;
                    }
                    ;
                  },
                  fieldController: messageController,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
