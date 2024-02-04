import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';

class SearchStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: Space.padding),
      width: Space.searchBoxWidth,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Space.borderCircular),
        border: Border.all(
            color: const Color(ListColor.homeScreenSearchColor),
            width: Space.homeScreenSearchBorderWidth),
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Tooltip(
            message: 'Nhập nội dung',
            child: Icon(
              Icons.search,
              color: Color(ListColor.searchStoreIconColor),
            ),
          ),
          filled: true,
          fillColor: Color(ListColor.homeScreenSearchColor),
          labelText: 'Search Store',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
