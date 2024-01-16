import 'package:flutter/material.dart';

class Cmbutton extends StatelessWidget {
  const Cmbutton({Key? key, this.color, this.buttonStyle, this.onPressed})
      : super(key: key);

  final Color? color;
  final ButtonStyle? buttonStyle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle,
      child: const Text('vvsv'),
    );
  }
}
