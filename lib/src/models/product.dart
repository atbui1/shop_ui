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

/** Bag */
List<Product> demoProductBag = [
  Product(
      id: 10,
      title: "Charles & Keith",
      description: desBag,
      images: [
        "assets/images/bag_1.png",
      ],
      colors: [
        Color(0xFF3D82AE),
      ],
      price: 123,
      rating: 1.1,
      isFavourite: true,
      isPopular: true
  ),
  Product(
      id: 11,
      title: "Coach",
      description: desBag,
      images: [
        "assets/images/bag_2.png",
      ],
      colors: [
        Color(0xFFD3A984),
      ],
      price: 223,
      rating: 2.1,
      isFavourite: true,
      isPopular: true
  ),
  Product(
      id: 12,
      title: "Christian Dior",
      description: desBag,
      images: [
        "assets/images/bag_3.png",
      ],
      colors: [
        Color(0xFF989493),
      ],
      price: 323,
      rating: 3.1,
      isFavourite: true,
      isPopular: true
  ),
  Product(
      id: 13,
      title: "Gucci",
      description: desBag,
      images: [
        "assets/images/bag_4.png",
      ],
      colors: [
        Color(0xFFE6B398),
      ],
      price: 323,
      rating: 3.1,
      isFavourite: true,
      isPopular: true
  ),
  Product(
      id: 14,
      title: "Louis Vuitton",
      description: desBag,
      images: [
        "assets/images/bag_5.png",
      ],
      colors: [
        Color(0xFFFB7883),
      ],
      price: 433,
      rating: 4.2,
      isFavourite: true,
      isPopular: true
  ),
  Product(
      id: 15,
      title: "Valentino",
      description: desBag,
      images: [
        "assets/images/bag_6.png",
      ],
      colors: [
        Color(0xFFAEAEAE),
      ],
      price: 2226,
      rating: 2.2,
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
const String desBag =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
    "Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";