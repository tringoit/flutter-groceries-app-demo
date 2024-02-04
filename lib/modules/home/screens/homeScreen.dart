import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/productBlock.dart';
import 'package:groceries_app/common/widgets/searchStore.dart';
import 'package:groceries_app/core/theme/appStyles.dart';
import '../../product/screens/product.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/path.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:groceries_app/common/widgets/plusButton.dart';
import 'package:groceries_app/modules/menu/navigationBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class Card {
  const Card(this.name, this.description, this.url, this.price);

  final String name;
  final String description;
  final String url;
  final String price;
}

List<Card> carts = [
  Card(
      'Organic Bananas', '7pcs, Priceg', '${Path.imagePath}banana.png', '4.99'),
  Card('Red Apple', '1kg, Priceg', '${Path.imagePath}apple.png', '4.99'),
  Card('Bell Pepper', '5pcs, Priceg', '${Path.imagePath}bell-pepper.png',
      '3.99'),
  Card('Onion', '2kg, Priceg', '${Path.imagePath}onion.png', '1.99')
];

List<Card> bestSelling = [
  Card('Bell Pepper', '5pcs, Priceg', '${Path.imagePath}bell-pepper.png',
      '3.99'),
  Card('Onion', '2kg, Priceg', '${Path.imagePath}onion.png', '1.99')
];

List<Card> groceriesCategory = [
  Card('Pulses', '', '${Path.imagePath}pulses.png', ''),
  Card('Broiler Chicken', '', '${Path.imagePath}broiler-chicken.png', '')
];

List<Card> groceries = [
  Card('Beef Bone', '1kg, Priceg', '${Path.imagePath}beef-bone.png', '4.99'),
  Card('Broiler Chicken', '1kg, Priceg', '${Path.imagePath}broiler-chicken.png',
      '4.99')
];

int currentIndex = 0;
final images = [
  Image.asset("${Path.imagePath}banner.png"),
  Image.asset("${Path.imagePath}group_vegetable.png")
];

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double seeAllFontSize = Space.homeScreenSeeAllFontSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Space.padding),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(
                    left: Space.padding,
                    top: Space.sizeBoxHeightMedium,
                  ),
                  child: Image.asset('${Path.imagePath}full-carot.png')),
              const SizedBox(height: Space.padding),
              Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, //Center Column contents vertically,
                  crossAxisAlignment: CrossAxisAlignment
                      .center, //Center Column contents horizontally
                  children: [
                    Icon(Icons.location_pin),
                    Container(
                        //margin: const EdgeInsets.only(top: Space.padding),
                        child: const Text(
                      'Dhaka, Banassre',
                      style: AppStyles.homeScreenSearchTextStyle,
                      textAlign: TextAlign.center,
                    )),
                  ]),
              SearchStore(),
              const SizedBox(height: Space.padding),
              Container(
                height: Space.bannerImageHeight,
                width: Space.bannerImageWidth,
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
                  items: images,
                ),
              ),
              DotsIndicator(
                dotsCount: images.length,
                position: currentIndex.toDouble(),
              ),
              Padding(
                padding: const EdgeInsets.all(Space.padding),
                child: Row(
                  children: [
                    Container(
                      child: const Text('Exclusive Offer',
                          style: AppStyles.homeScreenTitleTextStyle),
                    ),
                    const Spacer(),
                    Container(
                      child: const Text(TextContent.seeMore,
                          style: AppStyles.homeScreenSeeMoreTextStyle),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.padding),
                child: Container(
                  height: 230,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: carts.length,
                      itemBuilder: (context, index) {
                        return ItemCart(
                          item: carts[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: Space.sizeBoxHeightMedium)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Space.padding),
                child: Row(
                  children: [
                    Container(
                      child: const Text('Best Selling',
                          style: AppStyles.homeScreenTitleTextStyle),
                    ),
                    const Spacer(),
                    Container(
                      child: const Text(TextContent.seeMore,
                          style: AppStyles.homeScreenSeeMoreTextStyle),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Space.padding),
                child: Container(
                  height: Space.homeScreenItemCartHeight,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSelling.length,
                      itemBuilder: (context, index) {
                        return ItemCart(
                          item: bestSelling[index],
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: Space.sizeBoxHeightMedium)),
                ),
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavigation()
    );
  }
}

class ItemCart extends StatelessWidget {
  final Card item;
  const ItemCart({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Space.itemHeight,
        width: Space.itemWidth,
        padding: AppStyles.homeScreenItemCartPadding,
        decoration: BoxDecoration(
            border:
                Border.all(color: const Color(ListColor.homeScreenSearchColor)),
            borderRadius: BorderRadius.circular(Space.borderCircular)),
        child: ProductBlock(
            url: item.url,
            name: item.name,
            description: item.description,
            price: item.price));
  }
}
