import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/constants.dart';

AppBar buildAppBar(BuildContext context, {Color backgroundColor : Colors.white, Color iconColor : Colors.white, bool isBackVisible : true}) {
  return AppBar(
    backgroundColor: backgroundColor,
    elevation: 0,
    leading: Visibility(
      visible: isBackVisible,
      child: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.white,),
        onPressed: () => Navigator.pop(context),
      ),
    ),
    actions: [
      IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg",
            // The Default icon color is white
            color: iconColor,
          ),
          onPressed: (){}),
      IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg",
            // The Default icon color is white
            color: iconColor,
          ),
          onPressed: (){}),
      SizedBox(width: kDefaultPadding / 2,)
    ],
  );
}