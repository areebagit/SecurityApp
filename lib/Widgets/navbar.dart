import 'package:flutter/material.dart';
import 'package:security_app/Pages/alert.dart';
import 'package:security_app/Pages/contact.dart';
import 'package:security_app/Pages/home.dart';
import 'package:security_app/Pages/homeDashboad.dart';
import 'package:security_app/Pages/profile.dart';
import 'package:security_app/Pages/sms.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({Key? key}) : super(key: key);

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            selectedIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.contacts),
            selectedIcon: Icon(Icons.contacts_rounded),
            label: 'Contacts',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.message_rounded),
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.crisis_alert),
            selectedIcon: Icon(Icons.crisis_alert_outlined),
            label: 'Alert',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            selectedIcon: Icon(Icons.account_circle_rounded),
            label: 'Pofile',
          ),
        ],
      ),
      body: <Widget>[
        const HomeDashboard(),
        const ContactPage(),
        const SmsPage(),
        const AlertPage(),
        const Profile(),
      ][currentPageIndex],
    );
  }
}
