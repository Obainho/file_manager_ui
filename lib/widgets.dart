import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 15,
      endIndent: 10,
      indent: 10,
      thickness: 1,
      color: Colors.white60,
    );
  }
}

class Defaults {
  static const drawerItemColor = Colors.white;
  static const drawerItemColor2 = Colors.white70;
  static const bottomNavigationSelectedItemColor = Colors.blue;
  static const bottomNavigationUnselectedItemColor = Colors.white60;

  static final tiles = [
    'Files',
    'Trash',
    'Settings',
    'Help & feedback',
  ];
  static final icons = [
    Icons.folder,
    Icons.delete_outlined,
    Icons.settings_outlined,
    Icons.help_outline,
  ];

  static final bottomIcons = [
    Icons.star_border_outlined,
    Icons.manage_search,
    Icons.share_outlined,
  ];

  static final bottomLabels = [
    "Clean",
    "Browse",
    "Share",
  ];
}

class DrawerTiles extends StatelessWidget {
  final String text1;
  final bool text2;
  final IconData icon;
  final VoidCallback onTap;

  const DrawerTiles({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Icon(
              icon,
              color: Defaults.drawerItemColor,
              size: 25,
            ),
            const SizedBox(width: 10),
            text2
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Defaults.drawerItemColor,
                        ),
                      ),
                      const Text(
                        '0 bytes',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Defaults.drawerItemColor2,
                        ),
                      ),
                    ],
                  )
                : Text(
                    text1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Defaults.drawerItemColor,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class BrowserPageCollections extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const BrowserPageCollections({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 155,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 28, 29, 29),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(color: Defaults.drawerItemColor2),
          ),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        Row(
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Defaults.drawerItemColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BrowserPageTilesDivider extends StatelessWidget {
  const BrowserPageTilesDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 25,
      thickness: 1,
      indent: 60,
      color: Colors.white38,
    );
  }
}

class BrowsePageTiles extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text1;
  final String text2;

  const BrowsePageTiles({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            height: 35,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Defaults.drawerItemColor2,
              ),
            ),
            child: Icon(
              icon,
              color: iconColor,
            )),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 5),
          child: Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: text1,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Defaults.drawerItemColor,
                      ),
                    ),
                    TextSpan(
                      text: '\n$text2',
                      style: const TextStyle(
                        fontSize: 13,
                        color: Defaults.drawerItemColor2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PageLabels extends StatelessWidget {
  final String text;

  const PageLabels({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Defaults.drawerItemColor2,
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewContent extends StatelessWidget {
  final String text1;
  final String text2;
  final Color box1;
  final Color? box2;
  final bool row;
  final IconData icon;

  const ListViewContent({
    Key? key,
    required this.text1,
    required this.text2,
    required this.box1,
    this.box2,
    required this.row,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 130,
        width: 120,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Defaults.drawerItemColor2),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: row
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 57,
                          decoration: BoxDecoration(
                            color: box1,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            icon,
                            color: Defaults.drawerItemColor2,
                          ),
                        ),
                        const SizedBox(width: 3),
                        Container(
                          alignment: Alignment.center,
                          width: 57,
                          decoration: BoxDecoration(
                            color: box2,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            icon,
                            color: Defaults.drawerItemColor2,
                          ),
                        )
                      ],
                    )
                  : Container(
                      alignment: Alignment.center,
                      width: 117,
                      decoration: BoxDecoration(
                        color: box1,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Icon(
                        icon,
                        color: Defaults.drawerItemColor2,
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: text1,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Defaults.drawerItemColor,
                          ),
                        ),
                        TextSpan(
                          text: '\n$text2',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Defaults.drawerItemColor2,
                          ),
                        ),
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

class CleanPageItems extends StatelessWidget {
  final String text1;
  final String text2;

  const CleanPageItems({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            text1,
            style: const TextStyle(
              fontSize: 15,
              color: Defaults.drawerItemColor2,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              fontSize: 20,
              color: Defaults.drawerItemColor,
            ),
          ),
          const SizedBox(height: 5),
          TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: const BorderSide(
                  color: Color.fromARGB(255, 67, 106, 179),
                  width: 2.0,
                ),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              height: 30,
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Select files',
                    style: TextStyle(
                      color: Color.fromARGB(255, 67, 106, 179),
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: Color.fromARGB(255, 67, 106, 179),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
