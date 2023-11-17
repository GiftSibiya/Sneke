import 'package:flutter/material.dart';
import 'package:sneke/elements/tab_icons.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    //// Tab Controller
    return DefaultTabController(
      length: 5,

      //// Main Scaffold
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const
              ////---- Burger icon
              Icon(
            Icons.menu,
            size: 30,
            color: Colors.black87,
          ),

          //-- User Icon Button
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_2_outlined,
                  size: 30,
                  color: Colors.black87,
                ))
          ],
        ),

        //// Main Body of the application //
        body: Column(
          children: [
            //// hero text :
            Center(
              child: RichText(
                  text: const TextSpan(
                      text: "Have a little ",
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                      children: <TextSpan>[
                    TextSpan(
                        text: "  Sneke",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold))
                  ])),
            ),

            //// TastBar thing
            const TabBar(tabs: [
              TabTiles(iconPath: "fdfd", snakName: "Donut"),
              TabTiles(iconPath: "pic string here", snakName: "Donut"),
              TabTiles(iconPath: "pic string here", snakName: "Donut"),
              TabTiles(iconPath: "pic string here", snakName: "Donut"),
              TabTiles(iconPath: "pic string here", snakName: "Donut"),
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.orange,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
