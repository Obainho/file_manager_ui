import 'package:flutter/material.dart';
import '../widgets.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: Center(
        child: Text(
          'Help & feedback Page',
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