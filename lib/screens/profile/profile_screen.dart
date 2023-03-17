import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'components/profile_card.dart';
import '../main/components/side_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Container(
              color: secondaryColor,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    bottom: 50,
                    child: Image.asset(
                      "assets/images/sunset_desert.jpg",
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  Positioned(
                    left: -20,
                    right: 0,
                    bottom: 0,
                    child: ProfileCard(),
                  )
                ],
              ),
            ),
          ),
          ...wardrobe,
        ],
      ),
    );
  }
}

List<Widget> wardrobe = [
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_dashboard.svg",
    title: "Dashboard",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_tran.svg",
    title: "Transaction",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_task.svg",
    title: "Tasks",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_doc.svg",
    title: "Documents",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_store.svg",
    title: "Store",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_notification.svg",
    title: "Notification",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_profile.svg",
    title: "Profile",
  ),
  DrawerListTile(
    press: () {},
    imageSrc: "assets/icons/menu_setting.svg",
    title: "Settings",
  ),
];
