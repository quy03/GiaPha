import 'package:flutter/material.dart';

import '../../../constants.dart';

class CheckEvent extends StatefulWidget {
  const CheckEvent({
    super.key,
  });

  @override
  State<CheckEvent> createState() => _CheckEventState();
}

class _CheckEventState extends State<CheckEvent> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Selected Day = ${today.toString().split(" ")[0]}"),
            const Text(
              "Sự kiện ngày hôm nay",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kText1Color,
              ),
              child: const Text(
                "Không có sự kiên nào diễn ra hôm nay",
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "30 ngày tới",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 10),
            const Text(
              "Không có sự kiên nào diễn ra hôm nay",
            ),
          ],
        ),
      ),
    );
  }
}
