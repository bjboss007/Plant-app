
import 'package:anotherone/components/bottom_navigation.dart';
import 'package:anotherone/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';




class HomeScreen extends StatelessWidget {

  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavigation()
    );

  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){},
      ),

    );
  }
}
