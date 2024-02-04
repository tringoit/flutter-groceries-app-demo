import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/modules/auth/screens/signIn.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class Onbording extends StatefulWidget {
  @override
  State<Onbording> createState() => _Onbording();
}

class _Onbording extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AppStyles.onbordingAlignment,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            '${Path.imagePath}onbordingScreen.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height *
              Space.onbordingContentPositionTopRatio,
          child: Center(
            child: Column(children: [
              Image.asset('${Path.imagePath}carot.png'),
              const Text(
                'Welcome \n to our store',
                textAlign: AppStyles.onbordingTextAlignment,
                style: AppStyles.onbordingTitle,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: Space.padding),
                child: const Text(
                  'Ger your groceries in as fast as one hour',
                  style: AppStyles.onbordingDescription,
                ),
              ),
              Container(
                  width: Space.onbordingGetStartedButtonWidth,
                  height: Space.onbordingGetStartedButtonHeight,
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed('/signIn/'),
                    style: AppStyles.onbordingButton,
                    child: const Text('Get Started'),
                  ))
            ]),
          ),
        ),
      ],
    );
  }
}
