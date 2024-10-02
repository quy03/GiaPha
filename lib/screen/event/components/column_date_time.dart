import 'package:flutter/material.dart';

class ColumnDateTime extends StatelessWidget {
  final String timeLabel;
  final String timeValue;
  final String canChi;

  const ColumnDateTime({
    super.key,
    required this.timeLabel,
    required this.timeValue,
    required this.canChi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: "$timeLabel\n",
            style: const TextStyle(
              color: Color.fromARGB(221, 47, 47, 47),
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: "$timeValue\n",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: canChi,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 57, 57, 57),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
