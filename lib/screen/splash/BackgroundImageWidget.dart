import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundImageWidget extends StatelessWidget {
  const BackgroundImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color: AppColor.splashBackgroundColor,
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ic_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 50.0,
          left: 6.0,
          child: SvgPicture.asset(
            'assets/images/ic_logo.svg',
            height: 100.0,  // Adjust the height as needed
            width: 100.0,   // Adjust the width as needed
          ),
        ),
      ],
    );
  }
}
