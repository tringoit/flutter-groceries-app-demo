import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/product/screens/productDetail.dart';

// class PlusButton extends StatefulWidget {
//   @override
//   State<PlusButton> createState() => _PlusButton();
// }

class PlusButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Space.plusButtonSize,
        width: Space.plusButtonSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(Space.borderCircular),
            border: Border.all(width: 2, color: Colors.green)),
        child: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}
