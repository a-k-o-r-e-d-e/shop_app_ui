import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/components/body.dart';
import 'package:shop_app_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Body(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg",
            // The Default icon color is white
            color: kTextColor,
            ),
            onPressed: (){}),
        IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg",
              // The Default icon color is white
              color: kTextColor,
            ),
            onPressed: (){}),
        SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}
