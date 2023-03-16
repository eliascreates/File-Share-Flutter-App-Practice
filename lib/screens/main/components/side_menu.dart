import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../dashboard/components/storage_details.dart';
import '../../storage/storage_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
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
              press: () {
                if (Responsive.isMobile(context)) {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StorageScreen(),
                  ));
                }
              },
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
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.imageSrc,
    required this.title,
    required this.press,
  });

  final String imageSrc, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        imageSrc,
        color: Colors.white54,
        height: 20,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
