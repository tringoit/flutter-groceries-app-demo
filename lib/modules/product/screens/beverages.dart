import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/productBlock.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/common/widgets/plusButton.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class Beverages extends StatefulWidget {
  @override
  State<Beverages> createState() => _Beverages();
}

class Product {
  const Product(this.name, this.description, this.url, this.price);

  final String name;
  final String description;
  final String url;
  final String price;
}

List<Product> listProduct = [
  Product('Diet Coke', '355ml, Price', '${Path.imagePath}coke.png', '1.99'),
  Product('Sprite Can', '325ml, Price', '${Path.imagePath}sprite.png', '1.50'),
  Product('Apple & Grape Juice', '2L, Price',
      '${Path.imagePath}apple-juice.png', '15.99'),
  Product('Orenge Juice', '2L, Price', '${Path.imagePath}bakery-snacks.png',
      '15.99'),
  Product('Coca Cola Can', '325ml, Price', '${Path.imagePath}dairy-eggs.png',
      '4.99'),
  Product(
      'Pepsi Can ', '330ml, Price', '${Path.imagePath}beverage.png', '4.99'),
];

class _Beverages extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppStyles.arrowBackIcon,
            ),
          ),
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
            onPressed: () {},
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
                child: GridView.builder(
                  itemCount: listProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: Space.findProductsGridViewSpacing,
                      mainAxisSpacing: Space.findProductsGridViewSpacing,
                      mainAxisExtent: Space.homeScreenItemCartHeight),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemCart(
                      item: listProduct[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCart extends StatelessWidget {
  final Product item;
  const ItemCart({super.key, required this.item});

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
            price: '${item.price}'));
  }
}
