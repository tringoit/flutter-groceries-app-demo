import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/home/screens/homeScreen.dart';
import 'package:groceries_app/core/constants/path.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('${Path.imagePath}full-carot.png')),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 60, left: Space.padding),
            child: const Text(
              'Sign Up',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 10, left: Space.padding),
            child: const Text(
              'Enter your credentials to continue',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 40, left: Space.padding),
            child: const Text(
              'Username',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              width: 400,
              child: TextFormField()),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 40, left: Space.padding),
            child: const Text(
              'Email',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 400,
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Tooltip(
                message: '',
                child: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
              )),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 40, left: Space.padding),
            child: const Text(
              'Password',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 400,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  suffixIcon: Tooltip(
                message: '',
                child: Icon(Icons.remove_red_eye),
              )),
            ),
          ),
          //Image.asset('assets/hide-password.png'),
          Container(
            alignment: Alignment.centerRight,
            margin:
                const EdgeInsets.only(top: Space.padding, right: Space.padding),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 14.0,
                ),
                children: [
                  TextSpan(
                      text: 'By continuing you agree to our ',
                      style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(color: Colors.green)),
                  TextSpan(
                      text: ' and ', style: TextStyle(color: Colors.black)),
                  TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
          ),
          Container(
            width: Space.confirmButtonWidth,
            height: Space.confirmButtonHeight,
            margin: const EdgeInsets.only(top: Space.padding),
            child: ElevatedButton(
                onPressed: () => Get.toNamed('/homeScreen/'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                child: const Text(
                  'SignUp',
                  style: TextStyle(fontSize: 18),
                )),
          ),
          Container(
              margin: const EdgeInsets.only(top: Space.padding),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'SignUp', style: TextStyle(color: Colors.green)),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
