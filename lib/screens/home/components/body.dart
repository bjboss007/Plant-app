import 'package:anotherone/contants.dart';
import 'package:anotherone/screens/home/components/text_with_morebtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommended_plant.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          TextWithMoreBtn(
            text: "Recommended",
            press: () {},
          ),
          RecommendedPlant(),
          TextWithMoreBtn(
            text: "Featured",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

