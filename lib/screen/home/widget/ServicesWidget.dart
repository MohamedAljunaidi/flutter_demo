import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routes/AppRouter.gr.dart';
import '../presentation/ServiceModel.dart';

class ServicesWidget extends StatelessWidget {
  final List<ServiceModel> items; // List of Item models
  final void Function(ServiceModel) onItemTap;
  const ServicesWidget({super.key, required this.items, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      childAspectRatio: 1 / 1,
      physics: const NeverScrollableScrollPhysics(),
      children: items.map((item) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                onItemTap(item);
              },
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  textAlign: TextAlign.center,
                  item.text,
                  style: const TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
