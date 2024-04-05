import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Future<void> showMyfolderDialog(BuildContext context,
    TextEditingController textFolderController, Function onPressed) async {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('New Folder'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 17),
              SizedBox(
                height: 30,
                child: TextField(
                  controller: textFolderController,
                  decoration: const InputDecoration(
                    labelText: 'Untitled folder',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Observer(builder: (_) {
            return TextButton(
                child: const Text(
                  'Create',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  onPressed();
                });
          }),
        ],
      );
    },
  );
}
