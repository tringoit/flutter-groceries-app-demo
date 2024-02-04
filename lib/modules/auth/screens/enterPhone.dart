import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/appBar.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/auth/screens/selectLocation.dart';

class EnterPhone extends StatefulWidget {
  @override
  State<EnterPhone> createState() => _EnterPhone();
}

class _EnterPhone extends State<EnterPhone> {
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
            color: AppStyles.appBarColor,
          ),
        ),
        elevation: Space.appBarElevation,
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Container(
        margin: AppStyles.enterPhoneMargin,
        child: Column(
          children: [
            Container(
              alignment: AppStyles.enterPhoneAlignment,
              margin: EdgeInsets.only(left: Space.padding),
              child: const Text('Enter your 4-digit code',
                  style: AppStyles.enterPhoneTextStyle),
            ),
            Container(
                alignment: AppStyles.enterPhoneAlignment,
                margin:
                    EdgeInsets.only(left: Space.padding, top: Space.padding),
                child: const Text(
                  'Code',
                  style: AppStyles.enterPhoneCodeTextStyyle,
                )),
            const SizedBox(
              height: Space.sizeBoxHeightLarge,
            ),
            Container(
              width: Space.resendCodeTextFormWidth,
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.number,
                maxLength: Space.resendCodeTextFormMaxLength,
                decoration: const InputDecoration.collapsed(hintText: '----'),
              ),
            ),
            Container(
                alignment: AppStyles.enterPhoneAlignment,
                margin: AppStyles.resendCodeMargin,
                child: const Text(
                  'Resend Code',
                  style: AppStyles.resendCodeTextStyle,
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppStyles.fowardPageButtonTextStyle,
        onPressed: () => Get.toNamed('/selectLocation/'),
        child: const Icon(Icons.forward),
      ),
    );
  }
}
