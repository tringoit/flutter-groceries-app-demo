import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/auth/screens/login.dart';

class SelectLocation extends StatefulWidget {
  @override
  State<SelectLocation> createState() => _SelectLocation();
}

class _SelectLocation extends State<SelectLocation> {
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
        elevation: 0,
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Space.padding),
        child: Column(
          children: [
            Container(
                margin: AppStyles.locationMapMargin,
                child: Image.asset('${Path.imagePath}map.png')),
            Container(
              margin: AppStyles.locationSelectMargin,
              child: const Text(
                'Select Your Location',
                style: AppStyles.selectLocationTextStyle,
              ),
            ),
            Container(
                width: Space.selectLocationDescriptionWidth,
                margin: EdgeInsets.only(top: Space.padding),
                child: const Text(
                  "Swithch on your location to stay in tune with what’s happening in your area",
                  style: AppStyles.selectLocationDescriptionTextStyle,
                )),
            Container(
              alignment: AppStyles.selectLocationAlignment,
              margin: AppStyles.selectLocationYourZoneMargin,
              child: const Text(
                'Your Zone',
                style: AppStyles.selectLocationDescriptionTextStyle,
              ),
            ),
            Container(
              alignment: AppStyles.selectLocationAlignment,
              margin: AppStyles.selectLocationYourZoneDropDownMargin,
              child: DropdownButton<String>(
                isExpanded: true,
                items: <String>['Banasree', 'Banasree'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            Container(
              alignment: AppStyles.selectLocationAlignment,
              margin: AppStyles.selectLocationYourAreaDropDownMargin,
              child: const Text(
                'Your Area',
                style: AppStyles.selectLocationDescriptionTextStyle,
              ),
            ),
            Container(
              width: Space.selectLocationDropDownWidth,
              alignment: AppStyles.selectLocationAlignment,
              margin: AppStyles.selectLocationYourZoneDropDownMargin,
              child: DropdownButton<String>(
                isExpanded: true,
                items: <String>['Banasree', 'Banasree'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            SizedBox(height: Space.padding),
            Container(
                width: Space.selectLocationSubmitButtonWidth,
                height: Space.selectLocationSubmitButtonHeight,
                child: ElevatedButton(
                    onPressed: () => Get.toNamed('/login/'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Space.borderCircular)))),
                    child: const Text('Submit')))
          ],
        ),
      ),
    );
  }
}
