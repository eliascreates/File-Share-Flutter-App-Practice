import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../profile/components/profile_card.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuAppController>().controlMenu,
            icon: Icon(Icons.menu),
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        if (!Responsive.isDesktop(context)) SizedBox(width: defaultPadding),
        Expanded(
          child: SearchField(),
        ),
        if (!Responsive.isMobile(context)) ProfileCard()
      ],
    );
  }
}



class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        filled: true,
        fillColor: secondaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: defaultPadding / 2),
            child: Container(
              margin: (Responsive.isMobile(context))
                  ? null
                  : EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              padding: EdgeInsets.symmetric(horizontal: defaultPadding * 1),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset("assets/icons/Search.svg"),
            ),
          ),
        ),
      ),
    );
  }
}
