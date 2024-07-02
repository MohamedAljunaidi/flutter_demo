import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_demo/screen/home/widget/SliderWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../splash/SplashCardWidget.dart';

class ImageSliderWidget extends StatelessWidget {
  final List<String> imgList;
  const ImageSliderWidget({super.key, required this.imgList});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            top:0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 310,
                child: Center(
                    child:
                    SliderWidget(imgList: imgList,enlargeCenterPage : false)
                )
            )
        ),

      ],
    );
  }
}
