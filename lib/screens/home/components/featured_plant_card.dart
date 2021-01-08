import 'package:flutter/cupertino.dart';

import '../../../contants.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    this.imageUrl, this.press,
  }) : super(key: key);

  final String imageUrl;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: EdgeInsets.only(
            bottom: kDefaultPadding / 2,
            left: kDefaultPadding,
            top: kDefaultPadding / 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
      ),
    );
  }
}