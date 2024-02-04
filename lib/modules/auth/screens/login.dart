import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/auth/screens/signUp.dart';
import 'package:groceries_app/core/constants/path.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 100),
              child: Image.asset('${Path.imagePath}full-carot.png')),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 60, left: Space.padding),
            child: const Text(
              'Loging',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 10, left: Space.padding),
            child: const Text(
              'Enter your emails and password',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 40, left: Space.padding),
            child: const Text(
              'Email',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              width: 400,
              child: TextFormField()),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 40, left: Space.padding),
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
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: Space.padding, right: Space.padding),
            child: const Text(
              'Forgot Password?',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: 364,
            height: 67,
            margin: EdgeInsets.only(top: Space.padding),
            child: ElevatedButton(
                onPressed: () => Get.toNamed('/signUp/'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19)))),
                child: const Text(
                  'Login',
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
                        text: 'Don’t have an account? ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'SignUp', style: TextStyle(color: Colors.green)),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
