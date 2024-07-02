import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderCellWidget extends StatelessWidget {
  final String? sliderItems; // Receive imagePaths as a parameter

  const SliderCellWidget({super.key, required this.sliderItems});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Image.network(),
        //   ),
        // );
      },
      child: ClipRRect(
        child: Image.asset(
          width: double.infinity,
          sliderItems ?? "",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
