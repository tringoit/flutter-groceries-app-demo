import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import 'findProduct.dart';
import 'package:groceries_app/core/constants/path.dart';

class ProductDetailOld extends StatefulWidget {
  @override
  State<ProductDetailOld> createState() => _ProductDetailOld();
}

int currentIndex = 0;
final images = ["${Path.imagePath}apple.png", "${Path.imagePath}apple.png"];

class _ProductDetailOld extends State<ProductDetailOld> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppStyles.arrowBackIcon,
          ),
        ),
        elevation: 0,
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(Space.padding),
        child: Column(children: [
          Container(
              margin: EdgeInsets.only(right: Space.padding),
              alignment: Alignment.centerRight,
              child: Icon(Icons.upload)),
          Container(
              child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlayInterval:
                        const Duration(seconds: Time.imageSlideIntervalTime),
                    autoPlayAnimationDuration: const Duration(
                        milliseconds: Time.imageSlideAnimationDuration),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeFactor: Space.homeScreenEnlargeFactor,
                    scrollDirection: Axis.horizontal,
                    autoPlay: true,
                    aspectRatio: Space.homeScreenAspectRatio,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  items: images
                      .map((item) => Container(
                            child: Image.asset(
                              item,
                              fit: BoxFit.fitWidth,
                            ),
                          ))
                      .toList())),
          DotsIndicator(
            dotsCount: images.length,
            position: currentIndex.toDouble(),
          ),
          const SizedBox(
            height: Space.padding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Naturel Red Apple',
                  style: AppStyles.productDetailTextStyle),
              Icon(Icons.favorite_outline)
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              '1kg, Price',
              style: AppStyles.productDetailDescriptionTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Space.padding),
            child: Row(
              children: [
                Icon(Icons.remove),
                Container(
                  width: Space.productDetailAddItemInputWidth,
                  child: TextFormField(
                    initialValue: '1',
                    textAlign: AppStyles.productDetailAlignment,
                  ),
                ),
                Icon(Icons.add),
                Spacer(),
                Text(
                  '\$4.99',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            children: [Text('Product DetailOld'), Icon(Icons.arrow_drop_down)],
          ),
          Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
            style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
          ),
          Row(children: [
            Text('Nutritions'),
            Text('100gr'),
            Icon(Icons.arrow_right)
          ]),
          Row(children: const [
            Text('Review'),
            Spacer(),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.arrow_right)
          ]),
          Spacer(),
          Container(
            width: Space.addProductToCartButtonWidth,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FindProduct()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Space.borderCircular)))),
                child: const Text('Add To Basket')),
          )
        ]),
      ),
    );
  }
}
