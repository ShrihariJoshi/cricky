import 'package:cricky/home_screen.dart';
import 'package:cricky/stats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CricbaseApp());
}

class CricbaseApp extends StatelessWidget {
  const CricbaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // List of widgets corresponding to each bottom navigation item
    const List<Widget> widgetOptions = <Widget>[
      HomeScreen(),
      Stats(),
    ];

    void onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        backgroundColor: const Color.fromARGB(255, 89, 204, 220),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_cricket),
            label: 'Stats',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}
