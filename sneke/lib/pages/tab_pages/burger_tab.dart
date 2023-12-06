import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:sneke/constants/image_strings.dart';
import 'package:sneke/constants/samples.dart';

class BurgerTabPage extends StatelessWidget {
  const BurgerTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: burgerTiles.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(7.0),

            //-- Donut Tab Page --//
            //-- Tile Box --//
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: (burgerTiles[index].snakBG),
              ),

              //-- Box Internals --//

              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      ///--- Price Tag

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "R${burgerTiles[index].snakPrice}",
                          style: const TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                  ),

                  //// Space nyana
                  const SizedBox(
                    height: 2,
                  ),

                  //-- Snak Picture
                  SizedBox(
                    height: 60,
                    child: Image.asset(burgerTiles[index].snakPicPath),
                  ),

                  //// Space nyana
                  const SizedBox(
                    height: 5,
                  ),

                  ///-- Snak Shop
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        burgerTiles[index].sellingShop,
                        style: const TextStyle(fontSize: 10),
                      ),
                    ),
                  ),

                  //---- Snak Name
                  Text(
                    burgerTiles[index].snekName,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
