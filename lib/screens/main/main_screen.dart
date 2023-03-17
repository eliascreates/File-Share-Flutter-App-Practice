import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../dashboard/dashboard_screen.dart';
import 'components/bottom_navbar.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    DashboardScreen(),
    Center(child: Text("Search")),
    Center(child: Text("Notifications")),
    ProfileScreen()
  ];

  void _switchScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: (!Responsive.isMobile(context))
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    Expanded(
                      child: SideMenu(),
                    ),
                  Expanded(
                    flex: 5,
                    child: DashboardScreen(),
                  ),
                ],
              )
            : _screens[_selectedIndex],
      ),
      bottomNavigationBar: (Responsive.isMobile(context))
          ? BottomNavBar(selectedIndex: _selectedIndex, onPress: _switchScreen)
          : null,
    );
  }
}
