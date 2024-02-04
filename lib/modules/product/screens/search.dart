import 'package:flutter/material.dart';

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
  const Product('Egg Chicken Red', '4pcs, Price', 'assets/egg-red.png', '1.99'),
  const Product(
      'Egg Chicken White', '180g, Price', 'assets/egg-white.png', '1.50'),
  const Product('Egg Pasta', '30gm, Price', 'assets/egg-pasta.png', '15.99'),
  const Product('Egg Noodles', '2L, Price', 'assets/egg-noodle.png', '15.99'),
  const Product('Mayonnais Eggless', '325ml, Price',
      'assets/maiyonnais-eggless.png', '4.99'),
  const Product(
      'Egg Noodles', '330ml, Price', 'assets/egg-noodle-purple.png', '4.99'),
];

class _Beverages extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text(
                'Beverages',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.filter)
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            height: 230,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: listProduct.length,
                itemBuilder: (context, index) {
                  return ItemCart(
                    item: listProduct[index],
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 10)),
          ),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(item.url),
          const SizedBox(height: 10),
          Text(
            item.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text(item.description, style: const TextStyle(fontSize: 14)),
          Row(children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text(item.price,
                    style: const TextStyle(fontWeight: FontWeight.bold))),
            //Spacer(),
            const Icon(Icons.add)
          ])
        ],
      ),
    );
  }
}
