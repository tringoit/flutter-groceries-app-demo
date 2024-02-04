import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/common/widgets/confirmButton.dart';
import 'package:groceries_app/common/widgets/favouriteProductBlock.dart';
import 'package:groceries_app/common/widgets/myCartProductBlock.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'package:groceries_app/core/constants/path.dart';

class Favourite extends StatefulWidget {
  @override
  State<Favourite> createState() => _Favourite();
}

class Product {
  const Product(this.name, this.description, this.url, this.price);

  final String name;
  final String description;
  final String url;
  final String price;
}

List<Product> listProduct = [
  Product('Sprite Can', '325ml, Price', '${Path.imagePath}sprite.png', '1.50'),
  Product('Diet Coke', '355ml, Price', '${Path.imagePath}coke.png', '1.99'),
  Product('Apple & Grape Juice', '2L, Price',
      '${Path.imagePath}apple-juice.png', '15.50'),
  Product('Coca Cola Can', '325ml, Price', '${Path.imagePath}coca-cola.png',
      '4.99'),
  Product('Pepsi Can', '330ml, Price', '${Path.imagePath}pepsi.png', '4.99')
];

void openDialog() {
  Get.dialog(
    AlertDialog(
      content: Container(
        width: Space.alertDialogFavouriteWidth,
        height: Space.alertDialogFavouriteHeight,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(ListBorderStyle.alertDialogBorderRadius)),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.close,
                color: Color(ListColor.closeIconColor),
              ),
            ),
            Image.asset(
              '${Path.imagePath}groceries-basket.png',
              height: Space.groceriesBasketHeight,
              width: Space.groceriesBasketWidth,
            ),
            const SizedBox(height: Space.sizeBoxHeightSuperLarge),
            const Text('Oops! Order Failed',
                style: AppStyles.favouriteAlertDialogTitleTextStyle),
            const SizedBox(height: Space.sizeBoxHeightLarge),
            const Text(
              'Something went tembly wrong.',
              style: AppStyles.favouriteAlertDialogDescriptionTextStyle,
            ),
            Spacer(),
            const ConfirmButton(
                content: 'Please Try Again',
                textColor: ListColor.confirmButtonTextColor,
                buttonColor: ListColor.checkoutButtonColor),
            const ConfirmButton(
                content: 'Back to home',
                textColor: ListColor.backHomeButtonTextColor,
                buttonColor: ListColor.backHomeButtonColor)
          ],
        ),
      ),
    ),
  );
}

class _Favourite extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Favourite',
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
                    return FavouriteProductBlock(
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
            Container(
              width: 364,
              height: 67,
              child: ElevatedButton(
                onPressed: openDialog,
                style: AppStyles.myCartCheckoutButton,
                child: const Text(
                  'Add All To Cart',
                  style: AppStyles.favouriteAddCartTextStyle,
                ),
              ),
            )
          ])),
    );
  }
}
