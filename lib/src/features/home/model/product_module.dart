import 'package:flutter/material.dart';

class ProductModule {
  final String name;
  final String type;
  final String discription;
  final double price;
  final double rating;
  final int ratingsNum;
  final Image image;

  ProductModule({
    required this.name,
    required this.type,
    required this.discription,
    required this.price,
    required this.rating,
    required this.ratingsNum,
    required this.image,
  });
}
