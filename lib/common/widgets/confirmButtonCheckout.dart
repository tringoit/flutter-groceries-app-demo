import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/product/screens/checkout.dart';

class ConfirmButtonCheckout extends StatefulWidget {
  final String content;
  final int textColor;
  final int buttonColor;
  const ConfirmButtonCheckout(
      {super.key,
      required this.content,
      required this.textColor,
      required this.buttonColor});

  @override
  State<ConfirmButtonCheckout> createState() => _ConfirmButtonCheckout();
}

class _ConfirmButtonCheckout extends State<ConfirmButtonCheckout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Space.confirmButtonWidth,
      height: Space.confirmButtonHeight,
      child: TextButton(
        onPressed: () => Get.toNamed('/orderAccepted/'),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color(widget.buttonColor)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Space.borderCircular)))),
        child: Text(
          widget.content,
          style: TextStyle(
              color: Color(widget.textColor),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}
