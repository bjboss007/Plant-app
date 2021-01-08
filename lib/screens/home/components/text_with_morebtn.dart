


import 'package:anotherone/screens/home/components/text_with_custom_underline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../contants.dart';

class TextWithMoreBtn extends StatelessWidget {
  const TextWithMoreBtn({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TextWithCustomUnderline(text: text,),
          Spacer(),
          FlatButton(
            onPressed: press,
            child: Text(
              "more",
              style: TextStyle(color: Colors.white),
            ),
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }

}