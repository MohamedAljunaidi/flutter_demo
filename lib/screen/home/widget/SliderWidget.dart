import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'SliderCellWidget.dart';

class SliderWidget extends StatefulWidget {
  final List<String> imgList;
  final bool autoPlay;
  final bool enableInfiniteScroll;
  final Duration autoPlayInterval;
  final Duration autoPlayAnimationDuration;
  final Axis scrollDirection;
  final double viewportFraction;
  final bool enlargeCenterPage;
  final bool pageSnapping;
  final CenterPageEnlargeStrategy enlargeStrategy;

  const SliderWidget(
      {super.key,
      required this.imgList,
      this.autoPlay = true,
      this.enableInfiniteScroll = true,
      this.autoPlayInterval = const Duration(seconds: 10),
      this.autoPlayAnimationDuration = const Duration(milliseconds: 800),
      this.scrollDirection = Axis.horizontal,
      this.viewportFraction = 1.0,
      this.enlargeCenterPage = true,
      this.pageSnapping = true,
      this.enlargeStrategy = CenterPageEnlargeStrategy.zoom});

  @override
  SliderWidgetState createState() => SliderWidgetState();
}

class SliderWidgetState extends State<SliderWidget> {

  late List<String> imgList;
  late bool autoPlay;
  late bool enableInfiniteScroll;
  late Duration autoPlayInterval;
  late Duration autoPlayAnimationDuration;
  late Axis scrollDirection;
  late double viewportFraction;
  late bool enlargeCenterPage;
  late bool pageSnapping;
  late CenterPageEnlargeStrategy enlargeStrategy;

  @override
  void initState() {
    super.initState();
    imgList = widget.imgList;
    autoPlay = widget.autoPlay;
    enableInfiniteScroll = widget.enableInfiniteScroll;
    autoPlayInterval = widget.autoPlayInterval;
    autoPlayAnimationDuration = widget.autoPlayAnimationDuration;
    scrollDirection = widget.scrollDirection;
    viewportFraction = widget.viewportFraction;
    enlargeCenterPage = widget.enlargeCenterPage;
    pageSnapping = widget.pageSnapping;
    enlargeStrategy = widget.enlargeStrategy;
  }

  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: imgList.length,
          carouselController: _controller,
          options: CarouselOptions(
            enableInfiniteScroll: enableInfiniteScroll,
            autoPlay: autoPlay,
            autoPlayInterval: autoPlayInterval,
            autoPlayAnimationDuration: autoPlayAnimationDuration,
            scrollDirection: scrollDirection,
            viewportFraction: viewportFraction,
            enlargeCenterPage: enlargeCenterPage,
            enlargeStrategy: enlargeStrategy,
            pageSnapping: pageSnapping,
            padEnds: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },

            // Ensures padding at the ends, beneficial for smaller viewportFractions
            height: 330,
          ),
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                // Horizontal padding for spacing
                child: SliderCellWidget(sliderItems: imgList[index]));
          },
        ),
        Positioned(
          bottom: 50,right: 0,left: 0,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: _currentIndex,
              count: imgList.length,
              effect: const ScrollingDotsEffect(
                dotWidth: 7.0,
                dotHeight: 7.0,
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
