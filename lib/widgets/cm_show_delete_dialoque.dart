import 'package:flutter/material.dart';

showDeleteDialoq(BuildContext context, Function() onPressed) async {
  await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text('This action will permanently delete this data'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text('Delete'),
        ),
      ],
    ),
  );
}
