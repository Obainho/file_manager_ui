import 'package:file_manager_ui/widgets.dart';
import 'package:flutter/material.dart';

class CleanPage extends StatelessWidget {
  const CleanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 63, 70),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone_android_outlined,
                        color: Defaults.drawerItemColor,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '37.29 GB used',
                            style: TextStyle(
                                fontSize: 20, color: Defaults.drawerItemColor),
                          ),
                          Container(
                            height: 8,
                            width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 22, 22, 22),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 8,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.yellowAccent,
                                      size: 7,
                                    ),
                                    Text(
                                      '  0 B in Trash',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Defaults.drawerItemColor),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      '64 GB total ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Defaults.drawerItemColor),
                                    ),
                                    Icon(
                                      Icons.circle,
                                      color: Defaults.drawerItemColor,
                                      size: 4,
                                    ),
                                    Text(
                                      ' Internal',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Defaults.drawerItemColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Image(
                  image: AssetImage('assets/top.JPG'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Cleaning Suggestions',
                  style: TextStyle(
                    fontSize: 25,
                    color: Defaults.drawerItemColor,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 32, 32, 32),
                    border: Border.all(color: Defaults.drawerItemColor2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Junk files',
                        style: TextStyle(
                            fontSize: 20, color: Defaults.drawerItemColor),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Temporary app files taking up space',
                        style: TextStyle(
                            fontSize: 15, color: Defaults.drawerItemColor2),
                      ),
                      const SizedBox(height: 10),
                      MaterialButton(
                        color: const Color.fromARGB(255, 67, 106, 179),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: () {},
                        child: SizedBox(
                          height: 30,
                          width: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.cleaning_services, size: 18),
                              SizedBox(width: 10),
                              Text('Clean'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '18.27 MB, 25 files',
                  text2: 'Delete duplicates',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '1.73 MB, 35 files',
                  text2: 'Delete memes',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '15.83 MB, 10 files',
                  text2: 'Delete blurry photos',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '4.76 MB, 60 files',
                  text2: 'Delete large files',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '759 MB, 8 files',
                  text2: 'Delete unused apps',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '556 MB, 214 files',
                  text2: 'Delete Story Saver media',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '508 MB, 3 files',
                  text2: 'Delete UCDownloads media',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '497 MB, 135 files',
                  text2: 'Delete Story Saver videos',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '90.30 MB, 24 files',
                  text2: 'Delete Xender videos',
                ),
                const SizedBox(height: 10),
                const CleanPageItems(
                  text1: '46.39 MB, 3 files',
                  text2: 'Delete downloaded files',
                ),
                const SizedBox(height: 30),
                const Text(
                  'Copyright, ©2022. Obainho Designs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 243, 229, 229),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
