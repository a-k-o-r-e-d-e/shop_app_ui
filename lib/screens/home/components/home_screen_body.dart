import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/Product.dart';
import 'package:shop_app_ui/screens/home/components/categories.dart';
import 'package:shop_app_ui/screens/home/components/item_card.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
          Categories(),
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: kDefaultPadding / 2,
                      crossAxisSpacing: kDefaultPadding / 2),
                  itemCount: products.length,
                  itemBuilder: (context, index) => ItemCard(
                        product: products[index],
                        // press: ,
                      )))
        ],
      ),
    );
  }
}
