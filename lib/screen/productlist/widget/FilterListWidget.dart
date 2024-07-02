import 'package:flutter/material.dart';
import 'package:flutter_demo/common/AppColors.dart';
import 'package:flutter_demo/screen/productlist/FilterChipData.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FilterListWidget extends StatefulWidget {
  final List<FilterChipData> filterItems;

  const FilterListWidget({super.key, required this.filterItems});

  @override
  FilterListState createState() => FilterListState();
}

class FilterListState extends State<FilterListWidget> {
  late List<FilterChipData> filters;

  @override
  void initState() {
    super.initState();
    filters = widget.filterItems; // Initialize with widget's text
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38, left: 10, right: 10),
      child: SizedBox(
        height: 100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            children: filters.map((item) {
              return StaggeredGridTile.fit(
                crossAxisCellCount: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ChoiceChip(
                    label: Text(item.label ?? ""),
                    selected: item.isSelected ?? false,
                    checkmarkColor: AppColor.secondaryColor,
                    onSelected: (selected) {
                      setState(() {
                        item.isSelected = selected;
                      });
                      // Handle selection change if needed
                    },
                    backgroundColor: item.isSelected ?? false
                        ? AppColor.chipSelectedColor
                        : Colors.white,

                    labelStyle: TextStyle(
                        color: item.isSelected ?? false
                            ? AppColor.secondaryColor
                            : Colors.grey,fontSize: 14),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: item.isSelected ?? false
                            ? AppColor.chipSelectedColor
                            : Colors.white,
                        width: 0,
                      ), // Make it circular
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
