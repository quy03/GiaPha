import 'package:flutter/material.dart';

class InstructionSheet extends StatelessWidget {
  const InstructionSheet({
    super.key,
    required this.press,
  });
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Colors.green.shade400,
            ),
            color: Colors.green[200],
          ),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.crisis_alert_rounded,
                color: Colors.green.shade900,
              ),
              Text.rich(
                TextSpan(
                  text: "Hướng dẫn xử dụng tính năng\n",
                  style: TextStyle(
                    color: Colors.green.shade900,
                  ),
                  children: const [
                    TextSpan(
                      text:
                          "Bấm vào đây để xem các hướng dẫn\ntính nắng của app",
                      style: TextStyle(
                        color: Color.fromARGB(255, 107, 171, 110),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.list,
                color: Colors.green.shade900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
