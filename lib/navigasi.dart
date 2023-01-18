import 'package:flutter/material.dart';
import 'package:komunitas/komunitas.dart';
import 'package:komunitas/sosmed.dart';
import 'package:komunitas/website.dart';
import 'package:supercharged/supercharged.dart';

class navigasi extends StatefulWidget {
  @override
  State<navigasi> createState() => _navigasiState();
}

class _navigasiState extends State<navigasi> {
  int _selectedIndex = 0;
  PageController controller = PageController();

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });

    controller.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 57,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              controller: controller,
              children: [
                komunitas(),
                website(),
                sosmed(),
              ],
            ),
          ),
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: 'FF6969'.toColor(),
            onTap: _navigateBottomBar,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                label: 'Community',
                icon: Image.asset('assets/ic_community.png', scale: 1.5),
                activeIcon: Image.asset('assets/ic_community.png',
                    color: 'FF6969'.toColor(), scale: 1.5),
              ),
              BottomNavigationBarItem(
                label: 'Website',
                icon: Image.asset('assets/material-symbols_web-stories.png',
                    scale: 1.5),
                activeIcon: Image.asset(
                    'assets/material-symbols_web-stories.png',
                    color: 'FF6969'.toColor(),
                    scale: 1.5),
              ),
              BottomNavigationBarItem(
                label: 'Sosial Media',
                icon: Image.asset('assets/ic_sosmed.png', scale: 1.5),
                activeIcon: Image.asset('assets/ic_sosmed.png',
                    scale: 1.5, color: 'FF6969'.toColor()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
