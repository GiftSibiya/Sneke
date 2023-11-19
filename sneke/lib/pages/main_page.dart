import 'package:flutter/material.dart';
import 'package:sneke/constants/image_strings.dart';
import 'package:sneke/elements/tab_icons.dart';
import 'package:sneke/pages/tab_pages/burger_tab.dart';
import 'package:sneke/pages/tab_pages/donut_tab.dart';

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
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.pink,
                ));
          }),

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
        drawer: Drawer(),

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
                        text: " Sneke",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold))
                  ])),
            ),
            const SizedBox(
              height: 10,
            ),

            //// TastBar thing
            const TabBar(tabs: [
              TabTiles(iconPath: donut_icon, snakName: "Donut"),
              TabTiles(iconPath: burger_icon, snakName: "Burger"),
              TabTiles(iconPath: smoothie_icon, snakName: "Smoothie"),
              TabTiles(iconPath: pancake_icon, snakName: "pancake"),
              TabTiles(iconPath: pizza_icon, snakName: "pizza"),
            ]),
            Expanded(
              child: TabBarView(children: [
                const DonutTabPage(),
                const BurgerTabPage(),
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
