import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                    color: product.color
                )
            ),
            child: IconButton(icon: SvgPicture.asset("assets/icons/add_to_cart.svg", color: product.color,), onPressed: () {},),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                color: product.color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
                onPressed: () {},
                child: Text(
                  "Buy Now".toUpperCase(),
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}