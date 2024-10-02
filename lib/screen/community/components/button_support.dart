import 'package:flutter/material.dart';

class ButtonSupport extends StatelessWidget {
  const ButtonSupport({
    super.key,
    required this.image,
    required this.text,
    required this.press,
  });
  final String image, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 100,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              image,
              height: 40,
              width: 40,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
