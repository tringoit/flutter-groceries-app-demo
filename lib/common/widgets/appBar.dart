import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
        bottom: PreferredSize(
      preferredSize: Size.fromHeight(100.0),
      child: Column(
        children: <Widget>[
          new TabBar(
            tabs: [
              new Tab(icon: new Icon(Icons.directions_car)),
              new Tab(icon: new Icon(Icons.directions_transit)),
              new Tab(
                icon: new Icon(Icons.airplanemode_active),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
