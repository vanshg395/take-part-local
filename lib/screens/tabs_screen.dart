import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:websafe_svg/websafe_svg.dart';

import './dashboard_screen.dart';
import './search_screen.dart';
import './messages_screen.dart';
import './notifications_screen.dart';
import './profile_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  List<Widget> _pages = [
    DashboardScreen(),
    SearchScreen(),
    MessagesScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _selectedPageIndex,
        activeColor: Color(0xFFFF0000),
        items: [
          BottomNavigationBarItem(
            icon: WebsafeSvg.asset(
              'assets/svg/tab_dash.svg',
              color: _selectedPageIndex == 0 ? Color(0xFFFF0000) : null,
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: WebsafeSvg.asset(
              'assets/svg/tab_search.svg',
              color: _selectedPageIndex == 1 ? Color(0xFFFF0000) : null,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: WebsafeSvg.asset(
              'assets/svg/tab_messaging.svg',
              color: _selectedPageIndex == 2 ? Color(0xFFFF0000) : null,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: WebsafeSvg.asset(
              'assets/svg/tab_notifications.svg',
              color: _selectedPageIndex == 3 ? Color(0xFFFF0000) : null,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: WebsafeSvg.asset(
              'assets/svg/tab_settings.svg',
              color: _selectedPageIndex == 4 ? Color(0xFFFF0000) : null,
            ),
            label: 'Settings',
          ),
        ],
        onTap: (value) {
          setState(() {
            _selectedPageIndex = value;
          });
        },
      ),
    );
  }
}
