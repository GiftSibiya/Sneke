import 'package:flutter/material.dart';

class TabTiles extends StatelessWidget {
  const TabTiles({super.key, required this.iconPath, required this.snakName});

  final String iconPath;
  final String snakName;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 90,
      child: Column(
        children: [
          Image.asset(
            iconPath,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            snakName,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}
