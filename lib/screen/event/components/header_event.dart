import 'package:application_gia_pha/screen/event/components/board_date_time.dart';
import 'package:application_gia_pha/screen/event/components/calendar_table.dart';
import 'package:flutter/material.dart';

import '../../../components/button_icon.dart';
import '../../../constants.dart';

class HeaderEvent extends StatelessWidget {
  const HeaderEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Sự kiện",
                    style: TextStyle(
                      color: kText1Color,
                      fontSize: 32,
                    ),
                  ),
                  const Spacer(),
                  ButtonIcon(
                    press: () {},
                    text: 'Tạo sự kiện',
                    icon: Icons.add,
                    color: kText2Color,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const BoardDateTime(),
              const SizedBox(height: 10),
              const CalendarTable(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
