import 'package:flutter/material.dart';

class SplashCommunity extends StatelessWidget {
  const SplashCommunity({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        image,
        fit: BoxFit.cover, // Để hình ảnh bao phủ toàn bộ không gian
      ),
    );
  }
}
