import 'package:flutter/material.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/auth/screens/phone.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/common/widgets/signInButton.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.asset('${Path.imagePath}group_vegetable.png'),
        Container(
          alignment: AppStyles.signInTitleAlignment,
          margin: AppStyles.signInTitleMargin,
          child: const Text(
            'Get your groceries \n with nectar',
            style: AppStyles.signInTitleTextStyle,
          ),
        ),
        SizedBox(height: Space.padding),
        Row(children: [
          Container(
              alignment: AppStyles.signInTitleAlignment,
              margin: const EdgeInsets.only(left: Space.padding),
              child: Image.asset('${Path.imagePath}flag.png')),
          Container(margin: AppStyles.signInTitleMargin, child: Text('+084'))
        ]),
        Container(
            margin: AppStyles.signInOtherMethod,
            child: const Text('Or connect with social media')),
        const SizedBox(height: Space.padding),
        const SignInButton(name: 'Continue with Google', color: 0xff5B7CE9),
        const SizedBox(height: Space.padding),
        const SignInButton(name: 'Continue with Facebook', color: 0xff4E62AA)
      ]),
    );
  }
}
