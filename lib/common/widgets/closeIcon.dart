import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';

class CloseIcon extends StatefulWidget {
  final int color;

  const CloseIcon({super.key, required this.color});

  @override
  State<CloseIcon> createState() => _CloseIcon();
}

class _CloseIcon extends State<CloseIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.close,
      color: Color(widget.color),
    );
  }
}
