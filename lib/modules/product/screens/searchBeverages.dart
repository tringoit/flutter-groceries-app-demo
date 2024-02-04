import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/productBlock.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/common/widgets/plusButton.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class SearchBeverages extends StatefulWidget {
  @override
  State<SearchBeverages> createState() => _SearchBeverages();
}

class Product {
  const Product(this.name, this.description, this.url, this.price);

  final String name;
  final String description;
  final String url;
  final String price;
}

List<Product> listProduct = [
  Product(
      'Egg Chicken Red', '4pcs, Price', '${Path.imagePath}egg-red.png', '1.99'),
  Product('Egg Chicken White', '180g, Price', '${Path.imagePath}egg-white.png',
      '1.50'),
  Product(
      'Egg Pasta', '30gm, Price', '${Path.imagePath}egg-pasta.png', '15.99'),
  Product(
      'Egg Noodles', '2L, Price', '${Path.imagePath}egg-noodle.png', '15.99'),
  Product('Mayonnais Eggless', '325ml, Price',
      '${Path.imagePath}maiyonnais-eggless.png', '4.99'),
  Product('Egg Noodles', '330ml, Price',
      '${Path.imagePath}egg-noodles-purple.png', '4.99'),
];

class _SearchBeverages extends State<SearchBeverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Space.padding),
        child: Column(
          children: [
            Row(children: [
              Container(
                margin: const EdgeInsets.only(top: Space.padding),
                height: Space.searchBeveragesHeight,
                width: Space.searchBeveragesWidth,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Search Store',
                      prefixIcon: Tooltip(
                        message: 'Search Store',
                        child: Icon(Icons.search,
                            color: AppStyles.magnifierIconColor),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(Space.borderCircular)),
                        borderSide: BorderSide(
                            color: Color(ListColor.homeScreenSearchColor)),
                      ),
                      fillColor: Color(ListColor.homeScreenSearchColor),
                      filled: true),
                ),
              ),
              Container(
                margin: AppStyles.searchBeveragesMargin,
                child: Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () => Get.toNamed('/filters/'),
                      icon: Icon(Icons.tune),
                      color: AppStyles.arrowBackIcon,
                    ),
                  ),
                ),
              ),
            ]),
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
