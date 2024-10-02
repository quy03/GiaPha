import 'package:application_gia_pha/screen/event/components/check_event.dart';
import 'package:application_gia_pha/screen/event/components/header_event.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderEvent(),
        SizedBox(height: 15),
        CheckEvent(),
      ],
    );
  }
}
