import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import '../../../generated/l10n.dart';
import '../widget/HeaderWidget.dart';
import '../widget/SearchWidget.dart';
import '../widget/CategoriesGridWidget.dart';
import 'ServiceModel.dart';
import 'TopPickModel.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://picsum.photos/id/1/200/300',
    'https://picsum.photos/id/2/200/300',
    'https://picsum.photos/id/3/200/300',
    'https://picsum.photos/id/4/200/300',
  ];

  List<ServiceModel> items = [
    ServiceModel(imageUrl: 'assets/images/vegetables.png', text: 'Vegetables'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'Speciality'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'Curbside'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'Market'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'Gift Card'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'Offers'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'Subscribe'),
    ServiceModel(imageUrl: 'assets/images/ic_caffe.png', text: 'TopRated'),
  ];

  final List<CategoryModel> categories = [
    CategoryModel(
        imageUrl: 'assets/images/vegetables.png',
        title: 'Vegetables',
        subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/fruits.png',
        title: 'Fruits',
        subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/bread.png', title: 'Bread', subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/sweets.png',
        title: 'Sweets',
        subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/pasta.png', title: 'Pasta', subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/tea.png', title: 'Tea', subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/pasta.png', title: 'Pasta', subTitle: '(43)'),
    CategoryModel(
        imageUrl: 'assets/images/tea.png', title: 'Tea', subTitle: '(43)'),
  ];

  final TextEditingController _searchController = TextEditingController();

  void _handleSearch(String query) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HeaderWidget(text: S.of(context).title_categories),
              SearchWidget(
                  controller: _searchController, onSearch: _handleSearch),
              CategoriesGridWidget(categories: categories)
            ],
          ),
        ),
      ),
    );
  }
}
