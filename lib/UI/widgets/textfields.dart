import 'package:flutter/material.dart';

class MainTextField extends StatelessWidget {
  final Function(String text) onEdit;
  final Function(String text)? onEditComplete;
  final FocusNode _focusNode = FocusNode();
  final Color? borderColor;

  MainTextField(
      {super.key,
      required this.onEdit,
      this.onEditComplete,
      this.borderColor = Colors.pink});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 60,
      width: 700,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 254, 254),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          // Outer shadow (when not focused)
          BoxShadow(
            color: borderColor!.withOpacity(0.7),
            offset: const Offset(0, 3),
            blurRadius: 6,
            spreadRadius: 0,
          ),
          // Inner subtle highlight
          BoxShadow(
            color: borderColor!.withOpacity(0.5),
            offset: const Offset(0, -1),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Focus(
            focusNode: _focusNode,
            onFocusChange: (hasFocus) {
              // This triggers a rebuild with the animated container
            },
            child: TextField(
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF1D1D1F), // Apple dark text color
              ),
              onEditingComplete: () {
                if (onEditComplete != null) {
                  onEditComplete!('');
                }
              },
              onChanged: (text) {
                onEdit(text);
              },
              decoration: InputDecoration(
                hintText: "Type something...",
                hintStyle: TextStyle(
                  color: const Color(0xFF1D1D1F).withOpacity(0.4),
                  fontWeight: FontWeight.w300,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                suffixIcon: Icon(
                  Icons.mic,
                  color: const Color(0xFF1D1D1F).withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// schedule lunch for me and grandap at
