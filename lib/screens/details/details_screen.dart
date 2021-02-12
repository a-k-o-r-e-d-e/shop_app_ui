import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/models/Product.dart';
import 'package:shop_app_ui/screens/details/components/details_screen_body.dart';
import 'package:shop_app_ui/utils.dart';

class DetailsScreen extends StatelessWidget {

  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product is expected to have it's color
      backgroundColor: product.color,
      appBar: buildAppBar(context, backgroundColor: product.color),
      body: DetailsScreenBody(product: product,),
    );
  }
}
