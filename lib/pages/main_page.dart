import 'package:file_manager_ui/pages/help_page.dart';
import 'package:file_manager_ui/pages/home_page.dart';
import 'package:file_manager_ui/pages/settings_page.dart';
import 'package:file_manager_ui/pages/trash_page.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pages = [
    const HomePage(),
    const TrashPage(),
    const SettingsPage(),
    const HelpPage(),
  ];

  VoidCallback updateState(int index) {
    return () {
      setState(() {
        // Sets the state/page to the index of the clicked page for Drawer
        clickedIndex = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Defaults.icons[0],
              color: const Color.fromARGB(255, 255, 196, 0),
              size: 30,
            ),
            const SizedBox(width: 5),
            const Text(
              'Files',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white70,
                fontSize: 17,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          ),
        ],
      ),
      body: pages[clickedIndex],
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 42, 43, 43),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    clickedIndex = 0;
                  });
                  Navigator.pop(context);
                },
                child: SizedBox(
                  height: 60,
                  child: Row(
                    children: [
                      Icon(
                        Defaults.icons[0],
                        color: const Color.fromARGB(255, 255, 196, 0),
                        size: 30,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        Defaults.tiles[0],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Defaults.drawerItemColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const LineDivider(),
            Row(
              children: [
                const SizedBox(width: 55),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '0 B',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Defaults.drawerItemColor,
                        ),
                      ),
                      Text(
                        'Space saved',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Defaults.drawerItemColor2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const LineDivider(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DrawerTiles(
                        icon: Defaults.icons[1],
                        text1: Defaults.tiles[1],
                        text2: true,
                        onTap: updateState(1),
                      ),
                      DrawerTiles(
                        icon: Defaults.icons[2],
                        text1: Defaults.tiles[2],
                        text2: false,
                        onTap: updateState(2),
                      ),
                      DrawerTiles(
                        icon: Defaults.icons[3],
                        text1: Defaults.tiles[3],
                        text2: false,
                        onTap: updateState(3),
                      ),
                      const SizedBox(height: 350),
                    ],
                  ),
                ),
                const LineDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Obainho designs',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Defaults.drawerItemColor2,
                      ),
                    ),
                    SizedBox(width: 30),
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Defaults.drawerItemColor,
                    ),
                    SizedBox(width: 30),
                    Text(
                      'Version 1.5.2',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Defaults.drawerItemColor2,
                      ),
                    ),
                  ],
                ),
                const LineDivider(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
