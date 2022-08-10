import 'package:file_manager_ui/widgets.dart';
import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 3),
              ),
              child: const Icon(
                Icons.share_outlined,
                size: 100,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Nearby Share',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Defaults.drawerItemColor,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 67, 106, 179),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.upload_outlined),
                        Text('Send'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(255, 67, 106, 179),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.download_outlined),
                        Text('Receive'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              height: 40,
              width: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 42, 43, 43),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.share_outlined,
                    color: Colors.blue,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Using ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Nearby Share ',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
