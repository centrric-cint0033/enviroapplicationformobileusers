import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:flutter/material.dart';

class KeyValueTextWidget extends StatelessWidget {
  final int? maxLines;
  final TextStyle? keyStyle;
  final String keyName, value;
  const KeyValueTextWidget({
    super.key,
    this.maxLines,
    this.keyStyle,
    required this.value,
    required this.keyName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: showBlueText(keyName)),
        showBlackText(": "),
        Expanded(
            child: showBlackText(value,
                maxLines: maxLines ?? 1, overflow: TextOverflow.ellipsis))
      ],
    );
  }
}
