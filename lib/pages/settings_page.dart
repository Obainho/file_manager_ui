import 'package:flutter/material.dart';
import '../widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: Center(
        child: Text(
          'Settings Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            color: Defaults.drawerItemColor,
          ),
        ),
      ),
    );
  }
}