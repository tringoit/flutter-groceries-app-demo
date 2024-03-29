import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/minusButtonMyCart.dart';
import 'package:groceries_app/common/widgets/plusButtonMyCart.dart';
import 'package:groceries_app/controller/myCartController.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/common/models/listProducts.dart';
import 'package:groceries_app/modules/product/screens/checkout.dart';

class MyCartProductBlock extends StatefulWidget {
  final int index;
  final String url;
  final String name;
  final String description;
  final String price;
  int quantity;

  MyCartProductBlock(
      {super.key,
      required this.index,
      required this.url,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity});

  @override
  State<MyCartProductBlock> createState() => _MyCartProductBlock();
}

class _MyCartProductBlock extends State<MyCartProductBlock> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyCartController>(
      init: MyCartController(),
      builder: (c) => Column(children: [
        Row(
          children: [
            Image.asset(
              widget.url,
              height: Space.imageHeight,
              width: Space.imageWidth,
            ),
            const SizedBox(width: Space.sizeBoxHeightLarge),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            widget.name,
                            style: AppStyles.checkoutDetailMethodTextStyle,
                          ),
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.close,
                            color: Color(ListColor.closeSymbolButtonColor),
                          ),
                          onTap: () => c.cartList.value.removeAt(widget.index),
                        ),
                      ],
                    ),
                    const SizedBox(width: Space.sizeBoxHeightSmall),
                    Container(
                        child: Text(widget.description,
                            style: const TextStyle(
                                fontSize: 14,
                                color:
                                    Color(ListColor.productDescriptionColor)))),
                    const SizedBox(height: Space.sizeBoxHeightMedium),
                    Row(
                      children: [
                        //MinusButtonMyCart(),

                        //Giảm sản phẩm
                        Container(
                          height: Space.plusButtonSize,
                          width: Space.plusButtonSize,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Space.borderCircular),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(
                                      ListColor.myCartPlusButtonBorderColor))),
                          child: InkWell(
                            onTap: () {
                              c.cartList.update((list) {
                                list![widget.index].quantity =
                                    list[widget.index].quantity - 1;
                              });
                              calculatePrice(c.cartList.value);
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Color(ListColor.minusSymbolButtonColor),
                            ),
                          ),
                        ),

                        //Hiển thị số lượng
                        Obx(() {
                          return Container(
                            width: Space.productDetailAddItemInputWidth,
                            child: Text(
                              '${c.cartList.value[widget.index].quantity}',
                              textAlign: AppStyles.productDetailAlignment,
                              style: AppStyles.checkoutDetailMethodTextStyle,
                            ),
                          );
                        }),
                        //PlusButtonMyCart(),

                        //Tăng sản phẩm
                        Container(
                          height: Space.plusButtonSize,
                          width: Space.plusButtonSize,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Space.borderCircular),
                              border: Border.all(
                                  width: 1,
                                  color: const Color(
                                      ListColor.myCartPlusButtonBorderColor))),
                          child: InkWell(
                            onTap: () {
                              c.cartList.update((list) {
                                list![widget.index].quantity =
                                    list[widget.index].quantity + 1;
                              });
                              calculatePrice(c.cartList.value);
                            },
                            child: const Icon(
                              Icons.add,
                              color: Color(ListColor.checkoutButtonColor),
                            ),
                          ),
                        ),

                        const Spacer(),
                        Container(
                            child: Text('\$${widget.price}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18))),
                      ],
                    ),
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
      ]),
    );
  }
}
