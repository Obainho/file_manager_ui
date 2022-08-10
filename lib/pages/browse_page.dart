import 'package:file_manager_ui/widgets.dart';
import 'package:flutter/material.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              children: [
                const PageLabels(text: 'Recent'),
                SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ListViewContent(
                          text1: 'Story Saver',
                          text2: 'Images',
                          icon: Icons.image_outlined,
                          row: true,
                          box1: Colors.blueAccent,
                          box2: Colors.deepOrangeAccent),
                      ListViewContent(
                          text1: 'Video',
                          text2: 'Videos',
                          icon: Icons.video_library_outlined,
                          row: false,
                          box1: Colors.blueGrey),
                      ListViewContent(
                          text1: 'WhatsApp Audio',
                          text2: 'Audio',
                          icon: Icons.music_note_outlined,
                          row: false,
                          box1: Color.fromARGB(255, 73, 73, 73)),
                      ListViewContent(
                          text1: 'Story Saver',
                          text2: 'Videos',
                          icon: Icons.video_library_outlined,
                          row: true,
                          box1: Colors.deepOrange,
                          box2: Colors.deepPurpleAccent),
                      ListViewContent(
                          text1: 'Camera',
                          text2: 'Images',
                          icon: Icons.image_outlined,
                          row: false,
                          box1: Colors.deepOrangeAccent),
                      ListViewContent(
                          text1: 'Screenshot',
                          text2: 'Images',
                          icon: Icons.image_outlined,
                          row: true,
                          box1: Colors.blue,
                          box2: Colors.purpleAccent),
                      ListViewContent(
                          text1: 'ScreenRecord',
                          text2: 'Videos',
                          icon: Icons.video_library_outlined,
                          row: true,
                          box1: Colors.brown,
                          box2: Colors.grey),
                      ListViewContent(
                          text1: 'Download',
                          text2: 'Images',
                          icon: Icons.image_outlined,
                          row: false,
                          box1: Colors.blue),
                    ],
                  ),
                ),
                const PageLabels(text: 'Categories'),
                const BrowsePageTiles(
                  icon: Icons.download_outlined,
                  iconColor: Colors.blue,
                  text1: 'Downloads',
                  text2: '46 MB',
                ),
                const BrowserPageTilesDivider(),
                const BrowsePageTiles(
                  icon: Icons.image_outlined,
                  iconColor: Colors.orangeAccent,
                  text1: 'Images',
                  text2: '417 MB',
                ),
                const BrowserPageTilesDivider(),
                const BrowsePageTiles(
                  icon: Icons.videocam_outlined,
                  iconColor: Colors.green,
                  text1: 'Videos',
                  text2: '5.1 GB',
                ),
                const BrowserPageTilesDivider(),
                const BrowsePageTiles(
                  icon: Icons.music_note_outlined,
                  iconColor: Colors.purple,
                  text1: 'Audio',
                  text2: '2.1 GB',
                ),
                const BrowserPageTilesDivider(),
                const BrowsePageTiles(
                  icon: Icons.file_copy_outlined,
                  iconColor: Colors.blueAccent,
                  text1: 'Documents & others',
                  text2: '49 MB',
                ),
                const BrowserPageTilesDivider(),
                const BrowsePageTiles(
                  icon: Icons.apps_outlined,
                  iconColor: Colors.white,
                  text1: 'Apps',
                  text2: '8.3 GB',
                ),
                const BrowserPageTilesDivider(),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Collections',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Defaults.drawerItemColor2,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Defaults.drawerItemColor2,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BrowserPageCollections(
                      icon: Icons.star_outline,
                      iconColor: Colors.deepOrange,
                      text: 'Favorites',
                    ),
                    BrowserPageCollections(
                      icon: Icons.lock_outline,
                      iconColor: Defaults.drawerItemColor2,
                      text: 'Safe folder',
                    ),
                  ],
                ),
                const PageLabels(text: 'Storage devices'),
                const BrowsePageTiles(
                  icon: Icons.phone_android_outlined,
                  iconColor: Defaults.drawerItemColor,
                  text1: 'Internal storage',
                  text2: '26 GB free',
                ),
                const BrowserPageTilesDivider(),
                const SizedBox(height: 20),
                const Text(
                  'Copyright, ©2022. Obainho Designs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 243, 229, 229),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
