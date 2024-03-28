import 'dart:async';

import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final String? hint;
  final TextEditingController? ctr;
  final Function(String)? onChanged;
  const SearchField({super.key, this.onChanged, this.hint, this.ctr});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late Timer _debounce;

  @override
  void initState() {
    _debounce = Timer(const Duration(), () {});
    super.initState();
  }

  @override
  void dispose() {
    _debounce.cancel(); // Cancel the debouncer when disposing the widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.ctr,
      onChanged: (value) {
        if (_debounce.isActive) _debounce.cancel();
        _debounce = Timer(const Duration(milliseconds: 200), () {
          if (widget.onChanged != null) widget.onChanged!(value);
        });
      },
      decoration: InputDecoration(
        hintText: widget.hint ?? 'Search',
        prefixIcon: const Icon(Icons.search),
        hintStyle: Theme.of(context).textTheme.bodyMedium,
        border: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(30.0), // Adjust the value as needed
          borderSide: const BorderSide(color: Colors.black45), // Border color
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Colors.black45),
        ),
        contentPadding: const EdgeInsets.only(left: 20.0, right: 10),
        suffix: GestureDetector(
          onTap: () {
            if (widget.ctr?.text.isNotEmpty == true) {
              widget.ctr?.clear();
              if (widget.onChanged != null) widget.onChanged!("");
            }
          },
          child: const Icon(Icons.close, color: Colors.grey),
        ),
      ),
    );
  }
}
