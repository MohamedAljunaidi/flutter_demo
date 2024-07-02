import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screen/productdetails/ImageSliderWidget.dart';

import '../splash/SplashCardWidget.dart';
import 'ProductDetailsCardWidget.dart';

@RoutePage()
class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  ProductDetailsScreenState createState() => ProductDetailsScreenState();
}

class ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<String> items = [
    "assets/images/Media1.png",
    "assets/images/Media2.png",
    "assets/images/Media3.png",
    "assets/images/Media4.png",
    "assets/images/Media6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ImageSliderWidget(imgList: items),
          const ProductDetailsCardWidget(),
        ],
      ),
    );
  }
}
