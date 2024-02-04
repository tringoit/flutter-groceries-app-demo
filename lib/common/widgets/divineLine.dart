import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/divineLine.dart';
import 'package:groceries_app/core/constants/constants.dart';

class DivineLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: const Color(ListColor.divineLineColor),
    );
  }
}
