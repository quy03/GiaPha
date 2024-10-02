import 'package:application_gia_pha/screen/community/components/splash_community.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const images = [
      "assets/images/nengiaphatrang.png",
      "assets/images/nengiaphatrang.png",
      "assets/images/nengiaphatrang.png",
    ];
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return SplashCommunity(image: images[index]);
            },
          ),
        ),
        _buildDots(images.length), // Đưa chấm lên trên hình ảnh
      ],
    );
  }

  Widget _buildDots(int count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: _currentPage == index ? kPrimaryColor : Colors.grey,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
