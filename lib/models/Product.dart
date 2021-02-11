import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.title,
    this.image,
    this.price,
    this.description,
    this.size,
    this.color
});

}

List<Product> products = [
  Product(
    id: 1,
    title: 'Office Code',
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_1/png",
    color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: 'Belt Bag',
      price: 434,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2/png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: 'Hang Top',
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3/png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: 'Old Fashion',
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4/png",
      color: Color(0xFFE68398)),
  Product(
      id: 5,
      title: 'Hang Top',
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5/png",
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      title: 'Office Code',
      price: 234,
      size: 13,
      description: dummyText,
      image: "assets/images/bag_6/png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "Lorem Ipsum is simply a dummy text of the printing and typesetting industry";