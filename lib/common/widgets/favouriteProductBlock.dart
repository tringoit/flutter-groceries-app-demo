import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/core/constants/path.dart';

class FavouriteProductBlock extends StatefulWidget {
  final String url;
  final String name;
  final String description;
  final String price;

  const FavouriteProductBlock(
      {super.key,
      required this.url,
      required this.name,
      required this.description,
      required this.price});

  @override
  State<FavouriteProductBlock> createState() => _FavouriteProductBlock();
}

class _FavouriteProductBlock extends State<FavouriteProductBlock> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Image.asset(
            widget.url,
            height: Space.imageHeight,
            width: Space.imageWidth,
          ),
          const SizedBox(width: Space.sizeBoxHeightLarge),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      widget.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Spacer(),
                  Container(
                      child: Text('\$${widget.price}',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                  Image.asset(
                    '${Path.imagePath}arrow-right.png',
                    //height: Space.imageHeight,
                    width: Space.padding,
                  ),
                ],
              ),
              const SizedBox(width: Space.sizeBoxHeightSmall),
              Container(
                  child: Text(widget.description,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Color(ListColor.productDescriptionColor)))),
              const SizedBox(height: Space.sizeBoxHeightMedium),
            ]),
          ),
        ],
      ),
      const SizedBox(
        height: Space.sizeBoxHeightLarge,
      ),
      Container(
        width: double.infinity,
        height: 1,
        color: const Color(ListColor.divineLineColor),
      )
    ]);
  }
}
