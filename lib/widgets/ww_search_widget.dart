import 'package:flutter/material.dart';

class WWSearchField extends StatelessWidget {
  final Function(String)? onChanged;
  final TextEditingController controller;
  final Function() searchTap;
  final String? hintText;
  const WWSearchField(
      {super.key,
      this.onChanged,
      required this.controller,
      required this.searchTap,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.grey[200]!,
            )),
        child: TextField(
            onChanged: onChanged,
            controller: controller,
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
                hintText: hintText ?? 'Search here',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(10),
                suffixIcon: GestureDetector(
                    onTap: searchTap,
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                    )))));
  }
}
