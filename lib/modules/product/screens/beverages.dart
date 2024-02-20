import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/models/listProducts.dart';
import 'package:groceries_app/common/widgets/productBlock.dart';
import 'package:groceries_app/controller/myCartController.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/common/widgets/plusButton.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class Beverages extends StatefulWidget {
  @override
  State<Beverages> createState() => _Beverages();
}

class _Beverages extends State<Beverages> {
  final c = Get.find<MyCartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppStyles.arrowBackIcon,
          ),
        ),
        title: Row(children: [
          const Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Beverages',
                style: AppStyles.appBarTitleTextStyle,
              ),
            ),
          ),
          IconButton(
            onPressed: () => Get.toNamed('/searchBeverages/'),
            icon: Icon(Icons.tune),
            color: AppStyles.arrowBackIcon,
          )
        ]),
        elevation: Space.appBarElevation,
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(Space.padding),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  height: Space.homeScreenItemCartHeight,
                  padding: const EdgeInsets.symmetric(vertical: Space.padding),
                  child: Obx(() {
                    return GridView.builder(
                      itemCount: c.beveragesList.value.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing:
                                  Space.findProductsGridViewSpacing,
                              mainAxisSpacing:
                                  Space.findProductsGridViewSpacing,
                              mainAxisExtent: Space.homeScreenItemCartHeight),
                      itemBuilder: (BuildContext context, int index) {
                        return ItemCart(
                          item: listBeverages[index],
                          onPressed: () =>
                              c.cartList.value.add(listBeverages[index]),
                        );
                      },
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCart extends StatelessWidget {
  final Product item;
  final Function()? onPressed;
  const ItemCart({super.key, required this.item, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Space.itemHeight,
        width: Space.itemWidth,
        padding: AppStyles.homeScreenItemCartPadding,
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color(ListColor.beveragesColor),
                width: Space.productBorderWidth),
            borderRadius: BorderRadius.circular(Space.borderCircular)),
        child: ProductBlock(
            url: item.url,
            name: item.name,
            description: item.description,
            price: '${item.price}',
            quantity: item.quantity,
            onPressed: () {
              //xu ly list
              onPressed?.call();
            }));
  }
}
