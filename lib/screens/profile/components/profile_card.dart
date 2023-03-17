import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:admin/responsive.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: (!Responsive.isMobile(context)) ? secondaryColor : bgColor,
          border: Border.all(color: Colors.white10),
          borderRadius: (!Responsive.isMobile(context))
              ? BorderRadius.circular(10)
              : null),
      child: Row(
        children: [
          ClipOval(
            child: SizedBox.fromSize(
              size: Size.fromRadius(38 / 2),
              child: Image.asset(
                "assets/images/profile_photo.jpg",
                fit: BoxFit.cover,
                height: 38,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Text("Elias Kekana"),
          ),
          if (Responsive.isMobile(context)) Spacer(),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
