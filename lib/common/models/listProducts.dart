import 'package:flutter/material.dart';
import 'package:groceries_app/core/constants/path.dart';

class Product {
  Product(this.name, this.description, this.url, this.price, this.quantity);

  final String name;
  final String description;
  final String url;
  final String price;
  int quantity;
}

List<Product> listProduct = [
  Product('Organic Bananas', '7pcs, Priceg', '${Path.imagePath}banana.png',
      '4.99', 1),
  Product('Red Apple', '1kg, Priceg', '${Path.imagePath}apple.png', '4.99', 1),
  Product('Bell Pepper', '5pcs, Priceg', '${Path.imagePath}bell-pepper.png',
      '3.99', 1),
  Product('Onion', '2kg, Priceg', '${Path.imagePath}onion.png', '1.99', 1),
  Product('Bell Pepper Red', '1kg, Price', '${Path.imagePath}bell-pepper.png',
      '4.99', 1),
  Product('Egg Chicken White', '4pcs, Price', '${Path.imagePath}egg-red.png',
      '1.99', 1),
  Product('Organic Bananas', '12kg, Price', '${Path.imagePath}banana.png',
      '3.00', 1),
  Product('Ginger', '250gm, Price', '${Path.imagePath}onion.png', '2.99', 1),
  Product('Mayonnais Eggless', '325ml, Price',
      '${Path.imagePath}maiyonnais-eggless.png', '4.99', 1),
];

List<Product> bestSelling = [
  Product('Bell Pepper', '5pcs, Priceg', '${Path.imagePath}bell-pepper.png',
      '3.99', 1),
  Product('Onion', '2kg, Priceg', '${Path.imagePath}onion.png', '1.99', 1)
];

List<Product> groceriesCategory = [
  Product('Pulses', '', '${Path.imagePath}pulses.png', '', 0),
  Product('Broiler Chicken', '', '${Path.imagePath}rice.png', '', 0)
];

List<Product> listGroceries = [
  Product(
      'Beef Bone', '1kg, Priceg', '${Path.imagePath}beef-bone.png', '4.99', 1),
  Product('Broiler Chicken', '1kg, Priceg',
      '${Path.imagePath}broiler-chicken.png', '4.99', 1)
];

List<Product> listBeverages = [
  Product('Diet Coke', '355ml, Price', '${Path.imagePath}coke.png', '1.99', 1),
  Product(
      'Sprite Can', '325ml, Price', '${Path.imagePath}sprite.png', '1.50', 1),
  Product('Apple & Grape Juice', '2L, Price',
      '${Path.imagePath}apple-juice.png', '15.99', 1),
  Product('Orenge Juice', '2L, Price', '${Path.imagePath}bakery-snacks.png',
      '15.99', 1),
  Product('Coca Cola Can', '325ml, Price', '${Path.imagePath}dairy-eggs.png',
      '4.99', 1),
  Product(
      'Pepsi Can ', '330ml, Price', '${Path.imagePath}beverage.png', '4.99', 1),
];
