import 'package:flutter/material.dart';

import '../../../components/button_icon.dart';
import '../../../constants.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          const Text(
            "Gia phả",
            style: TextStyle(
              color: kText1Color,
              fontSize: 32,
            ),
          ),
          const Spacer(),
          ButtonIcon(
            press: () {},
            text: 'Quét',
            icon: Icons.qr_code_scanner_rounded,
            color: kText2Color,
          ),
          const SizedBox(width: 5),
          ButtonIcon(
            press: () {},
            text: 'Tạo mới',
            icon: Icons.add,
            color: kText2Color,
          ),
        ],
      ),
    );
  }
}
