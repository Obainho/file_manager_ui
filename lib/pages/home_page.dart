import 'package:flutter/material.dart';
import '../widgets.dart';
import 'browse_page.dart';
import 'clean_page.dart';
import 'share_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 1;
  

  var pages = [
    const CleanPage(),
    const BrowsePage(),
    const SharePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 42, 43, 43),
        elevation: 10,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white60,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomIcons[0]),
            label: Defaults.bottomLabels[0],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomIcons[1]),
            label: Defaults.bottomLabels[1],
          ),
          BottomNavigationBarItem(
            icon: Icon(Defaults.bottomIcons[2]),
            label: Defaults.bottomLabels[2],
          ),
        ],
      ),
    );
  }
}
