import 'package:application_gia_pha/screen/community/components/buttom_community.dart';
import 'package:application_gia_pha/screen/community/components/button_support.dart';
import 'package:application_gia_pha/screen/community/components/image_carousel.dart';
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const ImageCarousel(),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: avoid_unnecessary_containers
                ButtonCommunity(
                  color: Color.fromARGB(197, 255, 185, 180),
                  text1: 'Thành viên',
                  text2: '12345',
                ),
                ButtonCommunity(
                  color: Color.fromARGB(255, 211, 204, 129),
                  text1: 'Gia phả',
                  text2: '6789',
                )
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonSupport(
                    image: 'assets/images/gia_pha2.png',
                    text: 'Hướng dẫn sử dụng',
                    press: () {},
                  ),
                  ButtonSupport(
                    image: 'assets/images/logo_zalo1.png',
                    text: 'Góp ý và liên hệ Zalo',
                    press: () {},
                  ),
                  ButtonSupport(
                    image: 'assets/images/logo_giapha.png',
                    text: 'Chính sách tài khoản',
                    press: () {},
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text("lllll."),
            ),
          ],
        ),
      ),
    );
  }
}
