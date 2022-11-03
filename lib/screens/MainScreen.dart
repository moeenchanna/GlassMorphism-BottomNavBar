import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glass_bottombar/tabs/Tabbed.dart';
import '../utils/Utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    WallpaperViewTabbed(),
    WallpaperViewTabbed(),
    WallpaperViewTabbed(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      extendBody: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Theme.of(context).primaryColorDark),
        child: SafeArea(
          top: false,
          bottom: false,
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: GlassBox(
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          showSelectedLabels: true,
          showUnselectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: navigateBottomBar,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Download"),
            BottomNavigationBarItem(
                icon: Icon(Icons.remove_red_eye), label: "310K"),
            BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share"),
          ],
        ),
      ),
    );
  }
}
