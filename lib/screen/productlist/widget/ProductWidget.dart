import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_demo/routes/AppRouter.gr.dart';
import '../ProductListScreen.dart';

class ProductWidget extends StatelessWidget {
  final List<ProductItem> items;

  const ProductWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: ListingCell(
            item: items[index],
          ),
        );
      },
    );
  }
}

class ListingCell extends StatelessWidget {
  final ProductItem item;

  const ListingCell({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              AutoRouter.of(context).push(const ProductDetailsRoute());
            },
            child: Image.asset(
              item.image,
              fit: BoxFit.fill,
              width: 177,
              height: 130,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryColor
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        item.price,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "€ / piece",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.borderColor, width: 0.5),
                        ),
                          child: Image.asset(
                            "assets/images/heart.png",
                            width: 22,
                            height: 22,
                          ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.borderColor, width: 0.5),
                        ),
                        child: Image.asset(
                          "assets/images/shopping_cart.png",
                          width: 22,
                          height: 22,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
