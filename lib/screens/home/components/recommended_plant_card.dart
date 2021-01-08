import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../contants.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    this.imageUrl,
    this.price,
    this.name,
    this.country, this.press,
  }) : super(key: key);

  final String imageUrl, country, name;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.4,
        margin: EdgeInsets.only(
            bottom: kDefaultPadding * 2.5,
            left: kDefaultPadding,
            top: kDefaultPadding / 2
            ),
        child: Column(
          children: <Widget>[
            Image.asset(imageUrl),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(.23))
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "$name \n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(.5))),
                    ])),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
