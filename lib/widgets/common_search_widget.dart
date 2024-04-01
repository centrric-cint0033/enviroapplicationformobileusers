import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Container common_search_widget() {
  TextEditingController textController = TextEditingController();
  return Container(
    padding: const EdgeInsets.only(right: 15.0, left: 15),
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.grey[200]!,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    // onChanged: (value) {
                    //   if (value.isEmpty) {
                    //     vmtrailor.trailorfunction();
                    //   } else {
                    //     vmtrailor.semifueltrucksearchfunction();
                    //   }
                    // },
                    controller: textController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Search By client',
                      // hintStyle: const TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Observer(builder: (_) {
                        return GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
