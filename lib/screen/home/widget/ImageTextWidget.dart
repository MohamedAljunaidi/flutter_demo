import 'package:flutter/material.dart';

class ImageTextWidget extends StatefulWidget {
  final String imageUrl;
  final String text; // Make this final

  const ImageTextWidget({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  ImageTextWidgetState createState() => ImageTextWidgetState();
}

class ImageTextWidgetState extends State<ImageTextWidget> {
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.network(
          widget.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8),
        Text(
          _dynamicText, // Use local state
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
