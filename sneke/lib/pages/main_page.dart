import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
            TabBar(tabs: [])
          ],
        ),
      ),
    );
  }
}
