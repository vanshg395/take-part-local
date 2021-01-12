import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:websafe_svg/websafe_svg.dart';

import './map_search_view.dart';
import './list_search_view.dart';

import '../widgets/filters_sheet.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  List<Widget> _pages = [
    MapsSearchView(),
    ListSearchView(),
  ];

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  void _showFilters() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (ctx) => FiltersSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isIOS
          ? CupertinoNavigationBar(
              middle: Text('Search'),
              trailing: IconButton(
                icon: WebsafeSvg.asset('assets/svg/filter.svg'),
                onPressed: _showFilters,
              ),
            )
          : AppBar(
              title: Text('Search'),
              centerTitle: true,
              actions: [
                IconButton(
                  icon: WebsafeSvg.asset(
                    'assets/svg/filter.svg',
                    color: Colors.white,
                  ),
                  onPressed: _showFilters,
                ),
              ],
            ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                // color: Colors.red,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black.withOpacity(0.2),
                    width: 0,
                  ),
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 4,
                    color: Color(0xFF195587),
                  ),
                ),
                // isScrollable: true,
                labelColor: Color(0xFF195587),
                unselectedLabelColor: Colors.black,
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                onTap: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                tabs: [
                  Tab(
                    child: Text(
                      'Maps',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'List',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _pages[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
