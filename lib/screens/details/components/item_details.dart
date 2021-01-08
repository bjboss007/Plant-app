import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../contants.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    Key key, this.name, this.country, this.price,
  }) : super(key: key);

  final String name;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "$name \n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kTextColor, fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "$country",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),
            ]),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: TextStyle(fontSize: 30, color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
