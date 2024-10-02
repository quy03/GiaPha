import 'package:flutter/material.dart';

class ButtonCommunity extends StatelessWidget {
  const ButtonCommunity({
    super.key,
    required this.color,
    required this.text1,
    required this.text2,
  });

  final String text1, text2;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160, // Đặt chiều rộng cố định cho nút
      height: 60, // Đặt chiều cao cố định cho nút
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          // Căn giữa nội dung
          child: Text.rich(
            TextSpan(
              text: "$text1\n",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: text2,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 236, 103, 103),
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center, // Căn giữa nội dung theo chiều ngang
          ),
        ),
      ),
    );
  }
}
