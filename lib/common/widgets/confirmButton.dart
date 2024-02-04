import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/product/screens/checkout.dart';

class ConfirmButton extends StatefulWidget {
  final String content;
  final int textColor;
  final int buttonColor;
  const ConfirmButton(
      {super.key,
      required this.content,
      required this.textColor,
      required this.buttonColor});

  @override
  State<ConfirmButton> createState() => _ConfirmButton();
}

class _ConfirmButton extends State<ConfirmButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 67,
      child: TextButton(
        onPressed: () {},
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
