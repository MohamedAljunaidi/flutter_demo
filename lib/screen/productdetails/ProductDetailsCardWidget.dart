import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../../routes/AppRouter.gr.dart';

class ProductDetailsCardWidget extends StatelessWidget {
  const ProductDetailsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: 0.7,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Card(
            elevation: 8,
            margin: EdgeInsets.zero,
            color: AppColor.primaryColor,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16.0, 38.0, 16.0, 50.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Boston Lettuce",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.secondaryColor),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "1.10 ",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColor.secondaryColor),
                        ),
                        Text(
                          "€ / piece",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "~ 150 gr / piece",
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColor.onPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 32.0),
                    child: Text(
                      "Spain",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColor.secondaryColor,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25.0),
                    child: Text(
                      "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 17, color: AppColor.onSurfaceColor),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
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
                        Expanded(
                          child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/ic_add_to_cart.svg',
                                    height: 22.0, // Adjust the height as needed
                                    width: 22.0, // Adjust the width as needed
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Add to cart',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],)
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
