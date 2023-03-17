import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onPress,
  });

  final selectedIndex;
  final void Function(int) onPress;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onPress,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/menu_dashboard.svg",
              color: Colors.white,
              height: 20,
            ),
            tooltip: "Dashboard",
            label: "."),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
              color: Colors.white54,
              height: 20,
            ),
            tooltip: "Search",
            label: "."),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/menu_notification.svg",
              color: Colors.white,
              height: 20,
            ),
            tooltip: "Notifications",
            label: "."),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/menu_profile.svg",
              color: Colors.white,
              height: 20,
            ),
            tooltip: "Profile",
            label: "."),
      ],
    );
  }
}
