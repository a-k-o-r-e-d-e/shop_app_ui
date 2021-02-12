import 'package:flutter/material.dart';

import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/screens/home/components/home_screen_body.dart';
import 'package:shop_app_ui/utils.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, backgroundColor: Colors.white, iconColor: kTextColor, isBackVisible: false),
      body: HomeScreenBody(),
    );
  }


}
