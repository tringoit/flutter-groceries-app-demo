import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/closeIcon.dart';
import 'package:groceries_app/common/widgets/confirmButton.dart';
import 'package:groceries_app/common/widgets/confirmButtonCheckout.dart';
import 'package:groceries_app/common/widgets/divineLine.dart';
import 'package:groceries_app/common/widgets/myCartProductBlock.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:get/get.dart';

import '../../../controller/myCartController.dart';

class Checkout extends StatefulWidget {
  @override
  State<Checkout> createState() => _Checkout();
}

class Product {
  const Product(this.name, this.description, this.url, this.price);

  final String name;
  final String description;
  final String url;
  final String price;
}

class CheckoutDetail {
  const CheckoutDetail(this.type, this.detail);

  final String type;
  final String detail;
}

// List<Product> listProduct = [
//   Product('Bell Pepper Red', '1kg, Price', '${Path.imagePath}bell-pepper.png',
//       '4.99'),
//   Product('Egg Chicken White', '4pcs, Price', '${Path.imagePath}egg-red.png',
//       '1.99'),
//   Product(
//       'Organic Bananas', '12kg, Price', '${Path.imagePath}banana.png', '3.00'),
//   Product('Ginger', '250gm, Price', '${Path.imagePath}onion.png', '2.99'),
//   Product('Mayonnais Eggless', '325ml, Price',
//       '${Path.imagePath}maiyonnais-eggless.png', '4.99'),
//   Product('Egg Noodles', '330ml, Price',
//       '${Path.imagePath}egg-noodles-purple.png', '4.99'),
// ];

List<CheckoutDetail> listCheckoutDetail = [
  CheckoutDetail('Delivery', 'Select Method'),
  CheckoutDetail('Payment', 'credit_card'),
  CheckoutDetail('Promo Code', 'Pick discount'),
  CheckoutDetail('Total Cost', '\$13.97')
];

class _Checkout extends State<Checkout> {
  final c = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'My Cart',
              style: AppStyles.appBarTitleTextStyle,
            ),
          ),
          elevation: Space.appBarElevation,
          backgroundColor: AppStyles.appBarColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: const Color(ListColor.divineLineColor),
              height: 1.0,
            ),
          )),
      body: Padding(
          padding: const EdgeInsets.all(Space.padding),
          child: Column(children: [
            Expanded(
              child: Container(
                  height: Space.addProductToCartButtonWidth,
                  width: double.infinity,
                  child: Obx(() {
                    return ListView.separated(
                      itemCount: c.cartList.value.length,
                      itemBuilder: (context, index) {
                        final product = c.cartList.value[index];
                        return MyCartProductBlock(
                          index: index,
                          url: product.url,
                          name: product.name,
                          description: product.description,
                          price: product.price,
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: Space.sizeBoxHeightMedium),
                    );
                  })),
            ),
            Container(
              width: Space.confirmButtonWidth,
              height: Space.confirmButtonHeight,
              child: TextButton(
                onPressed: openBottomSheet,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Space.borderCircular)))),
                child: const Text(
                  'Go To Checkout',
                  style: AppStyles.myCartCheckoutButtonTextStyle,
                ),
              ),
            )
          ])),
    );
  }
}

void openBottomSheet() {
  Get.bottomSheet(
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: Space.sizeBoxHeightLarge),
      child: Column(
        children: [
          const SizedBox(height: Space.sizeBoxHeightLarge),
          Row(children: const [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Checkout',
                style: AppStyles.checkoutTitleTextStyle,
              ),
            ),
            Spacer(),
            Icon(
              Icons.close,
              color: Color(ListColor.closeIconColor),
            ),
          ]),
          const SizedBox(height: Space.sizeBoxHeightLarge),
          DivineLine(),
          Column(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: listCheckoutDetail.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: Space.checkoutPadding),
                        child: Row(
                          children: [
                            Text(
                              listCheckoutDetail[index].type,
                              style: AppStyles.checkoutDetailTypeTextStyle,
                            ),
                            Spacer(),
                            listCheckoutDetail[index].detail != 'credit_card'
                                ? Text(listCheckoutDetail[index].detail,
                                    style:
                                        AppStyles.checkoutDetailMethodTextStyle)
                                : Image.asset(
                                    '${Path.imagePath}arrow-right.png',
                                    //height: Space.imageHeight,
                                    width: Space.padding,
                                  ),
                            Image.asset(
                              '${Path.imagePath}arrow-right.png',
                              //height: Space.imageHeight,
                              width: Space.padding,
                            ),
                          ],
                        ),
                      ),
                      DivineLine()
                    ]);
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 0),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: 'By placing an order you agree to our',
                      style: AppStyles.checkoutDetailTextStyle),
                  TextSpan(
                      text: ' Terms ',
                      style: AppStyles.checkoutDetailTermTextStyle),
                  TextSpan(
                      text: 'And', style: AppStyles.checkoutDetailTextStyle),
                  TextSpan(
                      text: ' Conditions ',
                      style: AppStyles.checkoutDetailTermTextStyle)
                ])),
              ),
              const Padding(
                padding: EdgeInsets.only(top: Space.sizeBoxHeightLarge),
                child: ConfirmButtonCheckout(
                    content: 'Place Order',
                    textColor: ListColor.confirmButtonTextColor,
                    buttonColor: ListColor.checkoutButtonColor),
              )
            ],
          )
        ],
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
