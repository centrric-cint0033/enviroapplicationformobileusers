import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownButton extends StatelessWidget {
  final String? value;
  final List<String> items;
  final double? menuMaxHeight;
  final Function(String?)? onChanged;

  const CustomDropdownButton({
    super.key,
    this.value,
    this.onChanged,
    this.menuMaxHeight,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(color: Colors.grey.shade500),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: value,
            onChanged: onChanged,
            menuMaxHeight: menuMaxHeight,
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(fontSize: 10.sp),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
