import 'package:flutter/material.dart';

SingleChildScrollView news_page() {
  return SingleChildScrollView(
    child: Container(
      height: 150,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: const Color.fromARGB(255, 188, 209, 228),
          child: Row(children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide(color: Colors.blue),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 188, 209, 228),
                  ),
                ),
                child: const Text(
                  'View',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ]),
        ),
      ),
    ),
  );
}
