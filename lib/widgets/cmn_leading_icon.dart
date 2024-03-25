import 'package:flutter/material.dart';

class cmn_leading_icon extends StatelessWidget {
  const cmn_leading_icon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: IconButton(
        iconSize: 32,
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
    );
  }
}
