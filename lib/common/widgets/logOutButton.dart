import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class LogOutAccountButton extends StatefulWidget {
  final String content;
  const LogOutAccountButton({
    super.key,
    required this.content,
  });

  @override
  State<LogOutAccountButton> createState() => _LogOutAccountButton();
}

class _LogOutAccountButton extends State<LogOutAccountButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Space.confirmButtonWidth,
      height: Space.confirmButtonHeight,
      child: TextButton(
        onPressed: () {},
        style: AppStyles.logOutAccountButton,
        child: Row(children: [
          const Padding(
            padding: EdgeInsets.only(left: Space.sizeBoxHeightMedium),
            child: Icon(Icons.logout_outlined,
                color: Color(ListColor.logOutButtonTextColor)),
          ),
          Expanded(
            child: Center(
              child: Text(
                widget.content,
                style: AppStyles.buttonLogOutTextStyle,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
