import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/confirmButton.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class OrderAccepted extends StatefulWidget {
  @override
  State<OrderAccepted> createState() => _OrderAccepted();
}

class _OrderAccepted extends State<OrderAccepted> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            '${Path.imagePath}order-accepted-background.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height *
              Space.orderAcceptedPositionImageRatio,
          child: Column(children: [
            Image.asset(
              '${Path.imagePath}order-accepted-checked.png',
              height: Space.orderAcceptedCheckedHeight,
              width: Space.orderAcceptedCheckedWidth,
            )
          ]),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height *
              Space.orderAcceptedPositionTitleRatio,
          child: Column(children: [
            const Text(
              'Your Order has been \n accepted',
              textAlign: AppStyles.orderAcceptedTextAlignment,
              style: AppStyles.orderAcceptedTitleTextStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: Space.padding),
              child: const Text(
                'Your items has been placed and is on \n it\’s way to being processed',
                style: AppStyles.orderAcceptedDescriptionTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            //Spacer(),
          ]),
        ),
        Positioned(
          bottom: Space.padding,
          child: Column(
            children: [
              Container(
                width: Space.onbordingGetStartedButtonWidth,
                height: Space.onbordingGetStartedButtonHeight,
                child: const ConfirmButton(
                  content: 'Track Order',
                  textColor: ListColor.confirmButtonTextColor,
                  buttonColor: ListColor.checkoutButtonColor,
                ),
              ),
              Container(
                width: Space.onbordingGetStartedButtonWidth,
                height: Space.onbordingGetStartedButtonHeight,
                child: const ConfirmButton(
                  content: 'Back to home',
                  textColor: ListColor.backHomeButtonTextColor,
                  buttonColor: ListColor.backHomeButtonColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
