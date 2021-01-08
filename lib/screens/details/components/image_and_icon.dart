import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../contants.dart';
import 'icon_card.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    Key key,
   
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.svg",),
                    IconCard(icon: "assets/icons/icon_2.svg",),
                    IconCard(icon: "assets/icons/icon_4.svg",),
                    IconCard(icon: "assets/icons/icon_3.svg",)
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img.png"),
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(63),
                      topLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        color: kPrimaryColor.withOpacity(0.29),
                        blurRadius: 60)
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

