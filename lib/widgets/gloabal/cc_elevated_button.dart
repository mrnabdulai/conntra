import 'package:flutter/material.dart';

class CCElevatedButton extends StatelessWidget {
  const CCElevatedButton({Key? key, required this.text, required this.onPress})
      : super(key: key);
  final String text;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56.0),
          )),
    );
  }
}
