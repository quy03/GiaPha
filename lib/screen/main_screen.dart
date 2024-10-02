import 'package:application_gia_pha/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:application_gia_pha/screen/home/home_screen.dart';
import 'package:application_gia_pha/screen/event/event_screen.dart';
import 'package:application_gia_pha/screen/community/community_screen.dart';
import 'package:application_gia_pha/screen/account/account_screen.dart';
import 'package:application_gia_pha/components/custom_bottom_nav_bar.dart';
import 'package:application_gia_pha/enums.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const EventScreen(),
    const CommunityScreen(),
    const AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),

      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.values[_selectedIndex],
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
