import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/Product.dart';
import 'package:shop_app_ui/screens/details/components/add_to_cart.dart';
import 'package:shop_app_ui/screens/details/components/color_and_size.dart';
import 'package:shop_app_ui/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop_app_ui/screens/details/components/product_title_with_image.dart';

import 'description.dart';

class DetailsScreenBody extends StatelessWidget {
  final Product product;

  const DetailsScreenBody({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It Provide us with the total height & width
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPadding / 2,),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2,),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPadding / 2,),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}






