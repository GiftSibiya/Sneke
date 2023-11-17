import 'package:flutter/material.dart';
import 'package:sneke/constants/image_strings.dart';
import 'package:sneke/constants/samples.dart';

class TabTiles extends StatelessWidget {
  const TabTiles({super.key, required this.iconPath, required this.snakName});

  final String iconPath;
  final String snakName;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70,
      child: Container(
        child: Column(
          children: [
            Image.asset(
              iconPath,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              snakName,
              style: TextStyle(
                fontSize: 7.4,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
