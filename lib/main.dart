import 'package:application_gia_pha/screen/main_screen.dart';
import 'package:application_gia_pha/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Gia phả',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const MainScreen(),
      // initialRoute: HomeScreen.routeName,

      // routes: routes,
    );
  }
}

class StatelessWidget {}
