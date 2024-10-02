import 'package:application_gia_pha/screen/home/components/header_home.dart';
import 'package:application_gia_pha/screen/home/components/instruction_sheet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderHome(),
              const SizedBox(height: 30),
              InstructionSheet(press: () {}),
              const SizedBox(height: 30),
              Image.asset(
                "assets/images/gia_pha1.png",
                width: 300, // Đặt chiều rộng của hình ảnh
                height: 300, // Đặt chiều cao của hình ảnh
                fit: BoxFit.cover, // Đảm bảo hình ảnh không bị méo mó
              ),
              const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  text: "Bạn chưa tạo cây gia phả nào, nhấn vào nút\n",
                  style: TextStyle(
                    color: Color.fromARGB(255, 69, 69, 69),
                  ),
                  children: [
                    TextSpan(
                      text:
                          "[+ Tạo mơi] để bắt đầu tạo một cây gia phả ngay thôi!",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
