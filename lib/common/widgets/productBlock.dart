import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/plusButton.dart';
import 'package:groceries_app/core/constants/constants.dart';

class ProductBlock extends StatefulWidget {
  final String url;
  final String name;
  final String description;
  final String price;

  const ProductBlock(
      {super.key,
      required this.url,
      required this.name,
      required this.description,
      required this.price});

  @override
  State<ProductBlock> createState() => _ProductBlock();
}

class _ProductBlock extends State<ProductBlock> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(
          "/productDetail/${widget.name}/${widget.url}/${widget.description}"),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            widget.url,
            height: Space.imageHeight,
            width: Space.imageWidth,
          ),
          const SizedBox(height: Space.sizeBoxHeightLarge),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          const SizedBox(height: Space.sizeBoxHeightSmall),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(widget.description,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Color(ListColor.productDescriptionColor)))),
          const SizedBox(height: Space.sizeBoxHeightLarge),
          Row(children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text('\$ ${widget.price}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18))),
            Spacer(),
            PlusButton()
          ])
        ],
      ),
    );
  }
}