import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../../routes/AppRouter.gr.dart';

class SplashCardWidget extends StatelessWidget {
  const SplashCardWidget({super.key});

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
              padding: const EdgeInsets.fromLTRB(16.0, 60.0, 16.0, 50.5),
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/ic_contact_delivery.svg',
                    height: 100.0, // Adjust the height as needed
                    width: 100.0, // Adjust the width as needed
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Text(
                      S.of(context).splash_sub_title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          color: AppColor.secondaryColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Text(
                      S.of(context).splash_description,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 17, color: AppColor.onSurfaceColor),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: ElevatedButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const MainRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.onPrimaryColor,
                        // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Rounded corners
                        ),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: Text(S.of(context).order_now,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          )), // Replace with your button text
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Text(S.of(context).dismiss,
                        style: const TextStyle(
                          fontSize: 15,
                          color: AppColor.onSurfaceColor,
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
