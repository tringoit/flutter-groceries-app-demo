import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/confirmButton.dart';
import 'package:groceries_app/common/widgets/myCartProductBlock.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/core/constants/path.dart';

class MyCart extends StatefulWidget {
  @override
  State<MyCart> createState() => _MyCart();
}

class Product {
  const Product(this.name, this.description, this.url, this.price);

  final String name;
  final String description;
  final String url;
  final String price;
}

List<Product> listProduct = [
  Product('Bell Pepper Red', '1kg, Price', '${Path.imagePath}bell-pepper.png',
      '4.99'),
  Product('Egg Chicken White', '4pcs, Price', '${Path.imagePath}egg-red.png',
      '1.99'),
  Product(
      'Organic Bananas', '12kg, Price', '${Path.imagePath}banana.png', '3.00'),
  Product('Ginger', '250gm, Price', '${Path.imagePath}onion.png', '2.99'),
  Product('Mayonnais Eggless', '325ml, Price',
      '${Path.imagePath}maiyonnais-eggless.png', '4.99'),
  Product('Egg Noodles', '330ml, Price',
      '${Path.imagePath}egg-noodles-purple.png', '4.99'),
];

class _MyCart extends State<MyCart> {
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
                height: 400,
                width: double.infinity,
                child: ListView.separated(
                  itemCount: listProduct.length,
                  itemBuilder: (context, index) {
                    final product = listProduct[index];
                    return MyCartProductBlock(
                      url: product.url,
                      name: product.name,
                      description: product.description,
                      price: product.price,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: Space.sizeBoxHeightMedium),
                ),
              ),
            ),
            const ConfirmButton(
              content: 'Go to Checkout',
              textColor: ListColor.confirmButtonTextColor,
              buttonColor: ListColor.checkoutButtonColor,
            )
          ])),
    );
  }
}
