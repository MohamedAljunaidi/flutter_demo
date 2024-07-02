import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWidget extends StatefulWidget {
  final String text; // Make this final

  const HeaderWidget({
    super.key,
    required this.text,
  });

  @override
  HeaderWidgetState createState() => HeaderWidgetState();
}

class HeaderWidgetState extends State<HeaderWidget> {
  late String _dynamicText; // Local state to handle dynamic changes

  @override
  void initState() {
    super.initState();
    _dynamicText = widget.text; // Initialize with widget's text
  }

  void updateText(String newText) {
    setState(() {
      _dynamicText = newText; // Update local state which rebuilds the widget
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/ic_back.svg',
                height: 16.0, // Adjust the height as needed
                width: 16.0, // Adjust the width as needed
              ),
              Padding(
                padding: const EdgeInsets.only(top: 23.0),
                child: Text(
                  _dynamicText,
                  style: const TextStyle(
                    color: AppColor.secondaryColor,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
