import 'package:anotherone/contants.dart';
import 'package:flutter/material.dart';

import 'image_and_icon.dart';
import 'item_details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        ImageAndIcon(),
        ImageDetails(
          name: "Coconut",
          country: "Nigeria",
          price: 400,
        ),
        SizedBox(height: kDefaultPadding ,),
        Row(
          children: <Widget>[
            SizedBox(
              height: 84,
              width: size.width / 2,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20) )
                ),
                color: kPrimaryColor,
                onPressed: () {},
                child: Text(
                  "Buy now",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
              
                onPressed: () {  },
                child: Text("Description",style: TextStyle(fontSize: 16),),

                ),
              )
          ],
        ),
      ]),
    );
  }
}
