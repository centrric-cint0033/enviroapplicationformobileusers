import 'package:flutter/material.dart';

class CommonTextBtn extends StatelessWidget {
  final String btnText;
  final Function() onTap;
  const CommonTextBtn({super.key, required this.btnText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(color: Colors.blue),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
