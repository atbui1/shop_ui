import 'package:flutter/material.dart';

class Product {
 final int id;
 final String title, description;
 final List<String> images;
 final List<Color> colors;
 final double price, rating;
 final bool isFavourite, isPopular;

 Product({
      required this.id,
      required this.title,
      required this.description,
      required this.images,
      required this.colors,
      required this.price,
      this.rating = 0.0,
      this.isFavourite = false,
      this.isPopular = false
      });
}

/** set default list product*/

List<Product> demoProducts = [
  Product(
    id: 1,
    title: "Wireless Controller for PS4™",
    description: description1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 64.99,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    title: "Nike Sport White - Man Pant",
    description: description2,
    images: [
      "assets/images/img_popular_2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 50.5,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    title: "Gloves XC Omega - Polygon",
    description: description3,
    images: [
      "assets/images/img_glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 36.55,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    title: "Logitech Head",
    description: description4,
    images: [
      "assets/images/img_wireless_headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    price: 20.20,
    rating: 4.1,
    isFavourite: true,
    isPopular: true
  ),
];
const String description1 = "Wireless Controller for PS4™ gives you what you want in your "
    "gaming from over precision control your games to sharing";
const String description2 = ", the only way to change the background music is to "
    "highlight a game. The background theme will stop, and something from the game will play instead";
const String description3 = "The ethereal and peaceful PS5 background music is an excellent menu theme, and many enjoy listening to it";
const String description4 = "These can also be disabled using the same process. The option is under “Home Screen Music.”";