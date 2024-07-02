import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screen/home/widget/SearchWidget.dart';

import '../../common/AppColors.dart';
import '../../generated/l10n.dart';
import '../home/widget/HeaderWidget.dart';
import 'FilterChipData.dart';
import 'widget/FilterListWidget.dart';
import 'widget/ProductWidget.dart';

class ProductItem {
  final String image;
  final String title;
  final String price;

  ProductItem({required this.image, required this.title, required this.price});
}

@RoutePage()
class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<ProductItem> items = [
    ProductItem(
        image: 'assets/images/Media1.png', title: 'Boston Lettuce', price: '11.1'),
    ProductItem(
        image: 'assets/images/Media2.png', title: 'Purple Cauliflower', price: '11.1'),
    ProductItem(
        image: 'assets/images/Media3.png', title: 'Savoy Cabbage', price: '11.1'),
    ProductItem(
        image: 'assets/images/Media4.png', title: 'Boston Lettuce', price: '11.1'),
    ProductItem(
        image: 'assets/images/Media5.png', title: 'Purple Cauliflower', price: '11.1'),
    ProductItem(
        image: 'assets/images/Media6.png', title: 'Savoy Cabbage', price: '11.1'),
    // Add more items here
  ];

  List<FilterChipData> filterItems = [
    FilterChipData(label: "t1"),
    FilterChipData(label: "t1t1t1t1t1t1"),
    FilterChipData(label: "t1t1t1t1t1"),
    FilterChipData(label: "t1t1t1t1t1t1t1t1"),
    FilterChipData(label: "t1t1t1"),
    FilterChipData(label: "t1t1"),
    FilterChipData(label: "wwww"),
    FilterChipData(label: "dddd"),
    FilterChipData(label: "cccc"),
    FilterChipData(label: "xxxx"),
    FilterChipData(label: "zzzz"),
  ];

  final TextEditingController _searchController = TextEditingController();

  void _handleSearch(String query) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          color: AppColor.primaryColor,

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(text: S.of(context).title_vegetables),
                SearchWidget(
                    controller: _searchController, onSearch: _handleSearch),
                FilterListWidget(filterItems: filterItems),
                ProductWidget(items: items)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
