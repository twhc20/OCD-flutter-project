import 'package:flutter/material.dart';
import 'package:ocd_flutter_app/main_screens/profile_screen.dart';
import 'main_screens/home_screen.dart';
import 'main_screens/settings_screen.dart';

class MainPages extends StatefulWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  _MainPagesState createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const HomeScreen(),
    const ProfileScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: Colors.tealAccent,),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile', backgroundColor: Colors.tealAccent,),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',backgroundColor: Colors.tealAccent,),
        ],
      ),
    );
  }
}
