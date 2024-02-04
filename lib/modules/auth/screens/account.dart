import 'package:flutter/material.dart';
import 'package:groceries_app/common/widgets/confirmButton.dart';
import 'package:groceries_app/common/widgets/logOutButton.dart';
import 'package:groceries_app/core/constants/constants.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/core/theme/appStyles.dart';

class Account extends StatefulWidget {
  @override
  State<Account> createState() => _Account();
}

class Menu {
  final String url;
  final String name;

  const Menu(this.url, this.name);
}

List<Menu> listMenu = [
  Menu('${Path.imagePath}order.png', 'Orders'),
  Menu('${Path.imagePath}my-details.png', 'My Details'),
  Menu('${Path.imagePath}address.png', 'Delivery Address'),
  Menu('${Path.imagePath}payment-methods.png', 'Payment Methods'),
  Menu('${Path.imagePath}promo-cord.png', 'Promo Cord'),
  Menu('${Path.imagePath}notification.png', 'Notification'),
  Menu('${Path.imagePath}help.png', 'Help'),
  Menu('${Path.imagePath}about.png', 'About')
];

class _Account extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(bottom: Space.sizeBoxHeightSmall),
        child: Padding(
          padding: const EdgeInsets.all(Space.padding),
          child: Row(
            children: [
              Image.asset(
                '${Path.imagePath}avatar.png',
                height: Space.avatarHeight,
                width: Space.avatarWidth,
              ),
              const SizedBox(
                width: Space.sizeBoxHeightMedium,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(right: Space.sizeBoxHeightMedium),
                        child: Text(
                          'Afsar Hossen',
                          style: AppStyles.accountNameTextStyle,
                        ),
                      ),
                      Image.asset(
                        '${Path.imagePath}edit-pencil.png',
                      ),
                    ],
                  ),
                  const Text(
                    'Imshuvo97@gmail.com',
                    style: AppStyles.accountMailTextStyyle,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        height: 1,
        color: const Color(ListColor.divineLineColor),
      ),
      Expanded(
        child: ListView.separated(
          itemCount: listMenu.length,
          itemBuilder: (context, index) {
            return Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: Space.sizeBoxHeightMedium,
                    horizontal: Space.sizeBoxHeightLarge),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: Space.sizeBoxHeightMedium),
                      child: Image.asset(
                        listMenu[index].url,
                        height: Space.iconAccountHeight,
                        width: Space.iconAccountWidth,
                      ),
                    ),
                    Container(
                      child: Text(
                        listMenu[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      '${Path.imagePath}arrow-right.png',
                      //height: Space.imageHeight,
                      width: Space.padding,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color(ListColor.divineLineColor),
              )
            ]);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 0),
        ),
      ),
      const Padding(
          padding: EdgeInsets.only(bottom: Space.sizeBoxHeightLarge),
          child: LogOutAccountButton(content: 'Log Out'))
    ]);
  }
}
