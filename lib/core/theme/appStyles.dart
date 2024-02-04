import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';

class AppStyles {
  static const TextStyle onbordingTitle =
      TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white);

  static const TextStyle onbordingDescription = TextStyle(color: Colors.white);

  static ButtonStyle onbordingButton = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.green),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Space.borderCircular))));

  static const Alignment onbordingAlignment = Alignment.center;

  static const TextAlign onbordingTextAlignment = TextAlign.center;

  static const TextStyle signInTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

  static const Alignment signInTitleAlignment = Alignment.centerLeft;

  static const signInTitleMargin = EdgeInsets.only(left: Space.padding);

  static const signInOtherMethod = EdgeInsets.only(top: 80);

  static const TextStyle signInPhoneTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

  static const signInEnterPhoneMargin =
      EdgeInsets.only(left: Space.padding, top: 200);

  static const signInMobileNumberMargin =
      EdgeInsets.only(left: Space.padding, top: Space.padding);

  static const Alignment signInPhoneAlignment = Alignment.centerLeft;

  static const signInPhoneMargin =
      EdgeInsets.only(left: Space.padding, top: 10);

  static const TextStyle signInPhoneInputTextStyle = TextStyle(fontSize: 18);

  static const appBarColor = Colors.transparent;

  static const arrowBackIcon = Colors.black;

  static const enterPhoneMargin = EdgeInsets.only(top: 150);

  static const enterPhoneAlignment = Alignment.centerLeft;

  static const TextStyle enterPhoneCodeTextStyyle = TextStyle(fontSize: 16);

  static const resendCodeMargin =
      EdgeInsets.only(top: 400, left: Space.padding);

  static const resendCodeTextStyle = TextStyle(color: Colors.green);

  static const fowardPageButtonTextStyle = Colors.green;

  static const enterPhoneTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

  static const locationMapMargin = EdgeInsets.only(top: 20);

  static const locationSelectMargin = EdgeInsets.only(top: 30);

  static const selectLocationTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 26);

  static const selectLocationDescriptionTextStyle =
      TextStyle(fontSize: 16, color: Colors.grey);

  static const Alignment selectLocationAlignment = Alignment.centerLeft;

  static const selectLocationMargin = EdgeInsets.only(top: 50);

  static const selectLocationYourZoneMargin = EdgeInsets.only(top: 80);

  static const selectLocationYourZoneDropDownMargin = EdgeInsets.only(top: 10);

  static const selectLocationYourAreaDropDownMargin = EdgeInsets.only(top: 20);

  static const homeScreenSearchTextStyle = TextStyle(fontSize: 18);

  static const homeScreenItemCartPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 10);

  static const TextStyle homeScreenTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  static const TextStyle homeScreenSeeMoreTextStyle =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 16);

  static const TextStyle productTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  static const Alignment productAlignment = Alignment.center;

  static const TextStyle productDetailTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  static const TextStyle productDetailDescriptionTextStyle =
      TextStyle(fontSize: 16);

  static const TextAlign productDetailAlignment = TextAlign.center;

  static const findProductsPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 10);

  static const TextStyle appBarTitleTextStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AppStyles.arrowBackIcon);

  static const magnifierIconColor = Colors.black;

  static const searchBeveragesMargin = EdgeInsets.only(top: 15);

  static const TextStyle filterTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  static const TextStyle myCartTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

  static const TextStyle filterContentTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  static ButtonStyle myCartCheckoutButton = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all(const Color(ListColor.checkoutButtonColor)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Space.borderCircular))));

  static const TextStyle accountNameTextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static const TextStyle accountMailTextStyyle = TextStyle(fontSize: 16);

  static ButtonStyle logOutAccountButton = ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all(const Color(ListColor.logOutButtonColor)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Space.borderCircular))));

  static const TextStyle buttonLogOutTextStyle =
      TextStyle(color: Color(ListColor.logOutButtonTextColor), fontSize: 16);

  static const TextStyle orderAcceptedTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 28);

  static const TextStyle orderAcceptedDescriptionTextStyle =
      TextStyle(fontSize: 16);

  static const TextAlign orderAcceptedTextAlignment = TextAlign.center;

  static const TextStyle myCartCheckoutButtonTextStyle =
      TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);

  static const checkoutDetailTypeTextStyle = TextStyle(
      fontSize: 18, color: Color(ListColor.checkoutDetailTypeTextColor));

  static const TextStyle checkoutDetailMethodTextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Color(ListColor.checkoutDetailMethodTextColor));

  static const TextStyle checkoutTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  static const TextStyle checkoutDetailTextStyle =
      TextStyle(color: Colors.black);

  static const TextStyle checkoutDetailTermTextStyle =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black);

  static const TextStyle favouriteAlertDialogTitleTextStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 28);

  static const TextStyle favouriteAlertDialogDescriptionTextStyle = TextStyle(
      fontSize: 16,
      color: Color(ListColor.favouriteAlertDialogDescriptionTextColor));

  static const TextStyle favouriteAddCartTextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
}
