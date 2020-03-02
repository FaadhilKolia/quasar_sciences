import 'package:flutter/material.dart';
import 'package:initial_route/pages/downloads.dart';
import 'package:initial_route/pages/home_page.dart';
import 'package:initial_route/pages/timer_page.dart';
import 'tutorials.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class PhysicsPage extends StatefulWidget {
  static String physicsPageId = '//';

  @override
  _PhysicsPageState createState() => _PhysicsPageState();
}

class _PhysicsPageState extends State<PhysicsPage> {
  int _selectedItem = 1;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorForAppBar(_selectedItem),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedItem = index;
            });
          },
          children: <Widget>[
            TimerPage(),
            VideoLists(),
            DownloadLists(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Color(0xFFFFFFFF),
        itemCornerRadius: 25.0,
        showElevation: true,
        selectedIndex: _selectedItem,
        iconSize: 30.00,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        onItemSelected: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.jumpToPage(index);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text(
              'Timer',
              textAlign: TextAlign.center,
            ),
            icon: Icon(Icons.alarm),
            inactiveColor: Colors.black54,
            activeColor: Color(0xFF2B293C),
          ),
          BottomNavyBarItem(
            title: Text(
              'Tutorials',
              textAlign: TextAlign.center,
            ),
            icon: Icon(Icons.play_circle_outline),
            inactiveColor: Colors.black54,
            activeColor: Color(0xFF2B293C),
          ),
          BottomNavyBarItem(
            title: Text(
              'Resources',
              textAlign: TextAlign.center,
            ),
            icon: Icon(Icons.file_download),
            inactiveColor: Colors.black54,
            activeColor: Color(0xFF2B293C),
          ),
        ],
      ),
    );
  }
}

Color backgroundColorForAppBar(int index) {
  if (index == 1 || index == 2) {
    return Color(0xFFCCCCCC);
  } else {
    return Color(0xFF2B293C);
  }
}
