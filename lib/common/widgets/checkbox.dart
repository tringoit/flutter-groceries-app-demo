import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class MyCheckbox extends StatefulWidget {
  final String name;
  bool value;

  MyCheckbox({super.key, required this.name, required this.value});

  @override
  State<MyCheckbox> createState() => _MyCheckbox();
}

class _MyCheckbox extends State<MyCheckbox> {
  //bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                ListBorderStyle.checkboxFilterBorderRadius)),
        child: Checkbox(
          value: widget.value,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  ListBorderStyle.checkboxFilterBorderRadius)),
          onChanged: (bool? newValue) {
            setState(() {
              widget.value = newValue!;
            });
          },
          activeColor: const Color(ListColor.checkboxColor),
        ),
      ),
      Text(
        widget.name,
        style: AppStyles.filterContentTextStyle,
      )
    ]);
  }
}
