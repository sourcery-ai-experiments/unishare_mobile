import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unishare/app/modules/acara/acara_page.dart';
import 'package:unishare/app/modules/dashboard/views/dashboard_screen.dart';
import 'package:unishare/app/modules/karir/karir_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const Dashboard(),
    const KarirPage(),
    const AcaraPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        height: 74,
        selectedIndex: currentPageIndex,
        indicatorColor: const Color.fromRGBO(217, 217, 217, 1),
        onDestinationSelected: (int index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        destinations: [
          NavigationDestination(
              key: const Key("home-navbar-button"),
              icon: SvgPicture.asset('assets/icons/home-outlined.svg'),
              selectedIcon: SvgPicture.asset('assets/icons/home-filled.svg'),
              label: "Home"),
          NavigationDestination(
              key: const Key("karir-navbar-button"),
              icon: SvgPicture.asset('assets/icons/karir-outlined.svg'),
              selectedIcon: SvgPicture.asset('assets/icons/karir-filled.svg'),
              label: "Karir"),
          NavigationDestination(
              key: const Key("acara-navbar-button"),
              icon: SvgPicture.asset('assets/icons/acara-outlined.svg'),
              selectedIcon: SvgPicture.asset('assets/icons/acara-filled.svg'),
              label: "Acara"),
          NavigationDestination(
              key: const Key("profil-navbar-button"),
              icon: SvgPicture.asset('assets/icons/profile-outlined.svg'),
              selectedIcon: SvgPicture.asset('assets/icons/profile-filled.svg'),
              label: "Profil"),
        ],
      ),
    );
  }
}
