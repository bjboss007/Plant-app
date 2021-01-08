import 'package:anotherone/screens/details/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'recommended_plant_card.dart';

class RecommendedPlant extends StatelessWidget {
  const RecommendedPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            imageUrl: "assets/images/image_1.png",
            country: "Nigeria",
            name: "Coconut",
            price: 400,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          RecommendedPlantCard(
            imageUrl: "assets/images/image_2.png",
            country: "Nigeria",
            name: "Coconut",
            price: 400,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
          RecommendedPlantCard(
            imageUrl: "assets/images/image_3.png",
            country: "Nigeria",
            name: "Coconut",
            price: 400,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          ),
        ],
      ),
    );
  }
}
