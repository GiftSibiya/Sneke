import 'package:flutter/material.dart';

class DonutTabPage extends StatelessWidget {
  const DonutTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.amber,
          ),
        );
      },
    ));
  }
}
