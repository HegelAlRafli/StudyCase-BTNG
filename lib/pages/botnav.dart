import 'package:flutter/material.dart';
import 'package:studycase_btng/pages/homePages.dart';
import 'package:studycase_btng/pages/notifPages.dart';
import 'package:studycase_btng/pages/profilePages.dart';
import 'package:studycase_btng/pages/search_page.dart';

class Botnav extends StatefulWidget {
  const Botnav({super.key});

  @override
  State<Botnav> createState() => _BotnavState();
}

class _BotnavState extends State<Botnav> {
  int _currentIndex = 0;
  final screens = [HomePages(), SearchPage(), NotifPages(), ProfilePages()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          padding: EdgeInsets.only(top: 12, bottom: 16),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            elevation: 0,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.white),
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: _currentIndex == 0
                        ? Colors.black
                        : Colors.transparent,
                  ),
                  child: Icon(Icons.home),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: _currentIndex == 1
                        ? Colors.black
                        : Colors.transparent,
                  ),
                  child: Icon(Icons.search),
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: _currentIndex == 2
                        ? Colors.black
                        : Colors.transparent,
                  ),
                  child: Icon(Icons.notifications),
                ),
                label: "Notif",
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: _currentIndex == 3
                        ? Colors.black
                        : Colors.transparent,
                  ),
                  child: Icon(Icons.person),
                ),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
