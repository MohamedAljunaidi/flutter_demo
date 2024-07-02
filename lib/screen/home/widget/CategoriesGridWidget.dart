import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/AppRouter.gr.dart';
import '../../../common/AppColors.dart';
import '../presentation/TopPickModel.dart';

class CategoriesGridWidget extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoriesGridWidget({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 40),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 2 / 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GridItem(
            item: categories[index],
          );
        },
      ),
    );
  }
}


class GridItem extends StatelessWidget {
  final CategoryModel item;

  const GridItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,
      child: InkWell(
        onTap:(){
          AutoRouter.of(context).push(const ProductListRoute());
        },
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // if you need this
            side: const BorderSide(
              color: AppColor.borderColor,
              width: 1,
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),
                  image: DecorationImage(
                    image: AssetImage(item.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
                child: Text(item.title,
                    style: const TextStyle(
                      color: AppColor.secondaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
                child: Text(item.subTitle,
                    style: const TextStyle(
                      color: AppColor.onSurfaceColor,
                      fontSize: 12,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
