import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart';
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
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: const Color(0XFF949494),
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
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Observer(builder: (_) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
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
