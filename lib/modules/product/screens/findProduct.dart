import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/searchStore.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/modules/menu/navigationBar.dart';
import 'beverages.dart';
import 'package:groceries_app/core/constants/path.dart';

class FindProduct extends StatefulWidget {
  @override
  State<FindProduct> createState() => _FindProduct();
}

class Product {
  const Product(this.name, this.url, this.backgroundColor, this.borderColor);

  final String name;
  final String url;
  final String backgroundColor;
  final String borderColor;
}

List<Product> listProduct = [
  Product('Fresh Fruits & Vegetable', '${Path.imagePath}basket.png', 'EEF7F1',
      'BFE4CE'),
  Product('Cooking Oil & Ghee', '${Path.imagePath}oil-bottle.png', 'FEF6ED',
      'FBD4A8'),
  Product('Meat & Fish', '${Path.imagePath}meat-fish.png', 'FEE8E4', 'F9B4A4'),
  Product('Bakery & Snacks', '${Path.imagePath}bakery-snacks.png', 'F5EBF7',
      'DCBAE3'),
  Product(
      'Dairy & Eggs', '${Path.imagePath}dairy-eggs.png', 'FFF9E6', 'FDF2C7'),
  Product('Beverages', '${Path.imagePath}beverage.png', 'EDF7FC', 'C7E5F6'),
];

class _FindProduct extends State<FindProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            margin: EdgeInsets.only(top: Space.padding),
            child: const Text(
              'Find Products',
              style: AppStyles.homeScreenTitleTextStyle,
            )),
        Container(
            margin: const EdgeInsets.only(top: Space.padding),
            width: Space.searchBoxWidth,
            child: SearchStore()),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: GridView.builder(
              itemCount: listProduct.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: Space.findProductsGridViewSpacing,
                  mainAxisSpacing: Space.findProductsGridViewSpacing),
              itemBuilder: (BuildContext context, int index) {
                return ItemCart(
                  item: listProduct[index],
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}

class ItemCart extends StatelessWidget {
  final Product item;
  const ItemCart({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed('/beverages/'),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: AppStyles.findProductsPadding,
        decoration: BoxDecoration(
            color: Color(int.parse("0xff" + item.backgroundColor)),
            border:
                Border.all(color: Color(int.parse("0xff" + item.borderColor))),
            borderRadius: BorderRadius.circular(Space.borderCircular)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(item.url),
            const SizedBox(height: Space.sizeBoxHeightLarge),
            Text(
              item.name,
              style: AppStyles.productTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
