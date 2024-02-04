import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/auth/screens/phone.dart';

class SignInButton extends StatefulWidget {
  final String name;
  final int color;

  const SignInButton({super.key, required this.name, required this.color});

  @override
  State<SignInButton> createState() => _SignInButton();
}

class _SignInButton extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 364,
      child: ElevatedButton(
        onPressed: () => Get.toNamed('/phone/'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color(widget.color)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Space.borderCircular)))),
        child: Text(widget.name),
      ),
    );
  }
}
