import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSearch;

  const SearchWidget(
      {super.key, required this.controller, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: SizedBox(
        height: 50,
        child: TextField(
          readOnly: true,
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            // Search icon at the start of the view
            hintText: 'Search...',
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide:
                  const BorderSide(color: AppColor.borderColor, width: 20),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: AppColor.borderColor, width: 0.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: const BorderSide(color: AppColor.borderColor, width: 0.5),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          onChanged: onSearch,
        ),
      ),
    );
  }
}
