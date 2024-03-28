import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String? hint;
  final TextEditingController? ctr;
  final Function(String)? onChanged;
  const SearchField({super.key, this.onChanged, this.hint, this.ctr});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ctr,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint ?? 'Search',
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
          onTap: () => ctr?.clear(),
          child: const Icon(Icons.close, color: Colors.grey),
        ),
      ),
    );
  }
}
