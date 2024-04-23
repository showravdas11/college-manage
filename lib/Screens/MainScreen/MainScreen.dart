import 'package:college_management/Screens/BookmarkedScreen/Bookmarked.dart';
import 'package:college_management/Screens/HomeScreen/HomeScreen.dart';
import 'package:college_management/Screens/MoreScreen/MoreScreen.dart';
import 'package:college_management/Screens/ProfileScreen/ProfileScreen.dart';
import 'package:college_management/Theme/Theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    BookmarkedScreen(),
    MoreScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFBE8B5),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomAppBar(
          color: MyTheme.primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: GestureDetector(
                  onTap: () => _onItemTapped(0), // Corrected index
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: _selectedIndex == 0
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color(0xFFBBBBBB),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: _selectedIndex == 0
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => _onItemTapped(1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.bookmark_add,
                        color: _selectedIndex == 1
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color(0xFFBBBBBB),
                      ),
                      Text(
                        "Bookmarked",
                        style: TextStyle(
                          color: _selectedIndex == 1
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => _onItemTapped(2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.more,
                        color: _selectedIndex == 2
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color(0xFFBBBBBB),
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                          color: _selectedIndex == 2
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () => _onItemTapped(3),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.person,
                        color: _selectedIndex == 3
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Color(0xFFBBBBBB),
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: _selectedIndex == 3
                              ? Color.fromARGB(255, 255, 255, 255)
                              : Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
