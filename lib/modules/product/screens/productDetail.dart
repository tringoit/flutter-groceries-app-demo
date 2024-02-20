import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/controller/myCartController.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
//import 'findProduct.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:groceries_app/common/models/listProducts.dart';

class ProductDetail extends StatefulWidget {
  final String url;
  final String name;
  final String description;
  final String price;
  final int quantity;

  const ProductDetail(
      {super.key,
      required this.url,
      required this.name,
      required this.description,
      required this.price,
      required this.quantity});

  @override
  State<ProductDetail> createState() => _ProductDetail();
}

int currentIndex = 0;

String productDetailTextDefault =
    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.';
String productDetailText = productDetailTextDefault;

class _ProductDetail extends State<ProductDetail> {
  final TextEditingController _countController =
      TextEditingController(text: '1');
  final c = Get.find<MyCartController>();
  int productCount = 1;

  void _toggleText() {
    setState(() {
      if (productDetailText == '') {
        productDetailText = productDetailTextDefault;
      } else {
        productDetailText = '';
      }
    });
  }

  _calculateProductCount(symbol) {
    setState(() {
      if (symbol == '+') {
        productCount++;
      } else {
        productCount--;
      }
      _countController.text =
          productCount.toString(); // Update text field value
    });
  }

  Widget build(BuildContext context) {
    final images = [(widget.url), (widget.url)];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppStyles.arrowBackIcon,
          ),
        ),
        title: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.file_upload_outlined),
              color: AppStyles.arrowBackIcon,
            )
          ],
        ),
        elevation: 0,
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(Space.padding),
        child: Column(children: [
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
            children: [
              Text(widget.name, style: AppStyles.productDetailTextStyle),
              InkWell(
                onTap: _toggleText,
                child: Icon(Icons.favorite_border),
              )
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.description,
              style: AppStyles.productDetailDescriptionTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: Space.padding),
            child: Row(
              children: [
                InkWell(
                    onTap: () => _calculateProductCount('-'),
                    child: Icon(Icons.remove)),
                Container(
                  width: Space.productDetailAddItemInputWidth,
                  child: TextFormField(
                      controller: _countController,
                      textAlign: AppStyles.productDetailAlignment,
                      keyboardType: TextInputType.number),
                ),
                InkWell(
                  onTap: () => _calculateProductCount('+'),
                  child: const Icon(
                    Icons.add,
                    color: Color(ListColor.checkoutButtonColor),
                  ),
                ),
                Spacer(),
                Text(
                  '\$${widget.price}',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text('Product Detail'),
              Spacer(),
              InkWell(
                onTap: _toggleText,
                child: Image.asset(
                  '${Path.imagePath}arrow-right.png',
                  //height: Space.imageHeight,
                  width: Space.padding,
                ),
              )
            ],
          ),
          Text(
            productDetailText,
            style: const TextStyle(
                fontSize: 13,
                color: Color(ListColor.checkoutDetailTypeTextColor)),
          ),
          Row(children: [
            Text('Nutritions'),
            Text('100gr'),
            Spacer(),
            Image.asset(
              '${Path.imagePath}arrow-right.png',
              //height: Space.imageHeight,
              width: Space.padding,
            ),
          ]),
          Row(children: [
            Text('Review'),
            Spacer(),
            Row(
              children: List.generate(
                4,
                (index) => const Icon(Icons.star,
                    color: Color(ListColor.starReviewColor)),
              ),
            ),
            Image.asset(
              '${Path.imagePath}arrow-right.png',
              //height: Space.imageHeight,
              width: Space.padding,
            ),
          ]),
          Spacer(),
          Container(
            width: Space.confirmButtonWidth,
            height: Space.confirmButtonHeight,
            child: ElevatedButton(
                onPressed: () => c.cartList.value.add(Product(
                    widget.name,
                    widget.description,
                    widget.url,
                    widget.price,
                    widget.quantity + 1)),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(Space.borderCircular)))),
                child: const Text(
                  'Add To Basket',
                  style: AppStyles.myCartCheckoutButtonTextStyle,
                )),
          )
        ]),
      ),
    );
  }
}
