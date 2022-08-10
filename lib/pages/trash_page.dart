import 'package:flutter/material.dart';
import '../widgets.dart';

class TrashPage extends StatelessWidget {
  const TrashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 20, 20),
      body: Center(
        child: Text(
          'Trash Page',
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