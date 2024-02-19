import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/plusButton.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/modules/product/screens/productDetail.dart';

class ProductBlock extends StatefulWidget {
  final String url;
  final String name;
  final String description;
  final String price;
  final Function()? onPressed;

  const ProductBlock({
    super.key,
    required this.url,
    required this.name,
    required this.description,
    required this.price,
    this.onPressed,
  });

  @override
  State<ProductBlock> createState() => _ProductBlock();
}

class _ProductBlock extends State<ProductBlock> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => Get.toNamed(
      //     "/productDetail/${widget.name}/${widget.url}/${widget.description}"),
      onTap: () => Get.to(() => ProductDetail(
          url: widget.url,
          name: widget.name,
          description: widget.description,
          price: widget.price)),
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
            const Spacer(),
            Container(
                height: Space.plusButtonSize,
                width: Space.plusButtonSize,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(Space.borderCircular),
                    border: Border.all(width: 2, color: Colors.green)),
                child: InkWell(
                  onTap: () {
                    widget.onPressed?.call();
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ))
          ])
        ],
      ),
    );
  }
}
