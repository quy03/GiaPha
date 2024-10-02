import 'package:flutter/material.dart';
import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
    required this.onItemTapped,
  });

  final MenuState selectedMenu;
  final Function(int) onItemTapped;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -1),
            blurRadius: 10,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => onItemTapped(0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.device_hub_outlined,
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                Text(
                  "Gia phả",
                  style: TextStyle(
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onItemTapped(1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.event,
                  color: MenuState.event == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                Text(
                  "Sự kiện",
                  style: TextStyle(
                    color: MenuState.event == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onItemTapped(2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.comment_outlined,
                  color: MenuState.community == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                Text(
                  "Cộng đồng",
                  style: TextStyle(
                    color: MenuState.community == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => onItemTapped(3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.account_circle,
                  color: MenuState.account == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                Text(
                  "Tài khoản",
                  style: TextStyle(
                    color: MenuState.account == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
