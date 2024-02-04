import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/product/screens/productDetail.dart';

class PlusButtonMyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Space.plusButtonSize,
        width: Space.plusButtonSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Space.borderCircular),
            border: Border.all(
                width: 1,
                color: const Color(ListColor.myCartPlusButtonBorderColor))),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.add,
            color: Colors.green,
          ),
        ));
  }
}
