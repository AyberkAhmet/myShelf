import 'package:flutter/material.dart';
import 'package:myshelf/screens/addBookPage.dart';
import 'package:myshelf/screens/homePage.dart';
import 'package:myshelf/screens/profilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
      '/': (context) => MyBottomNavBar(),
      '/addbookpage': (context) => AddBookPage(),
    },
    );
  }
}

class MyBottomNavBar extends StatefulWidget {
  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  final List<Widget> _pageList = [
    HomePage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {Navigator.pushNamed(context, "/addbookpage") ;},
      ),
    );
  }
}
