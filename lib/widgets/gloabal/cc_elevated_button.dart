import 'package:flutter/material.dart';

class CCElevatedButton extends StatelessWidget {
  const CCElevatedButton({Key? key,this.isDisabled = false, required this.text, required this.onPress})
      : super(key: key);
  final String text;
  final VoidCallback onPress;
  final bool isDisabled;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:isDisabled ? null : onPress,
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
