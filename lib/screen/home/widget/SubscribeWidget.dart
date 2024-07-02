import 'package:flutter/material.dart';
import '../presentation/TopPickModel.dart';

class SubscribeWidget extends StatelessWidget {
  final List<CategoryModel> tops;

  const SubscribeWidget({super.key, required this.tops});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x06000000),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subscribe and save",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black),
              ),
              Text(
                "View all",
                style: TextStyle(fontSize: 15, color: Colors.black87),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 155, // Adjust the height to fit the content + avatar
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tops.length, // Use the number of tops as the item count
            itemBuilder: (context, index) {
              EdgeInsets padding;
              if (index == 0) {
                padding = const EdgeInsets.fromLTRB(20, 15, 0, 0);
              } else if (index == tops.length - 1) {
                padding = const EdgeInsets.fromLTRB(0, 15, 20, 0);
              } else {
                padding = const EdgeInsets.fromLTRB(0, 15, 0, 0);
              }
              return Padding(
                padding: padding,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      clipBehavior: Clip.antiAlias,
                      child: SizedBox(
                        width: 173, // Specify the width of each card
                        child: Column(
                          children: [
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: ListTile(
                                  title: Text(tops[index].title,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center),
                                  subtitle: Text(tops[index].subTitle,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FractionalTranslation(
                      translation: const Offset(0.0, -0.1),
                      // Adjust translation as needed
                      child: CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(tops[index].imageUrl)),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
