import 'package:flutter/material.dart';

class TabTiles extends StatelessWidget {
  const TabTiles({super.key, required this.iconPath, required this.snakName});

  final String iconPath;
  final String snakName;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 30,
      child: Container(
        color: Colors.blue,
        child: Column(
          children: [
            Image.asset(iconPath),
          ],
        ),
      ),
    );
  }
}
