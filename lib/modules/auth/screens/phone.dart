import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/auth/screens/enterPhone.dart';
import 'package:groceries_app/core/constants/path.dart';

class Phone extends StatefulWidget {
  @override
  State<Phone> createState() => _Phone();
}

class _Phone extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppStyles.arrowBackIcon,
            ),
          ),
          elevation: Space.appBarElevation,
          backgroundColor: AppStyles.appBarColor),
      body: Column(
        children: [
          Column(children: [
            Container(
              alignment: AppStyles.signInTitleAlignment,
              margin: AppStyles.signInEnterPhoneMargin,
              child: const Text(
                'Enter your phone number',
                style: AppStyles.signInPhoneTextStyle,
              ),
            ),
            Container(
                alignment: AppStyles.signInTitleAlignment,
                margin: AppStyles.signInMobileNumberMargin,
                child: const Text('Mobile Number')),
            Row(children: [
              Container(
                  alignment: AppStyles.signInPhoneAlignment,
                  margin: AppStyles.signInPhoneMargin,
                  child: Image.asset('${Path.imagePath}flag.png')),
              Container(
                  margin: AppStyles.signInPhoneMargin,
                  width: Space.signInPhoneWidth,
                  child: TextFormField(
                      initialValue: '+880',
                      style: AppStyles.signInPhoneInputTextStyle))
            ]),
          ])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => Get.toNamed('/enterPhone/'),
        child: const Icon(Icons.forward),
      ),
    );
  }
}
