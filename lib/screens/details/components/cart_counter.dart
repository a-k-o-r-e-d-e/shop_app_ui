import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {

  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildOutlineButton(icon: Icons.remove, press: () {
          setState(() {
            if (numOfItems > 1) {
              numOfItems--;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
          child: Text(
            // If our item count is less than 10 then it displays it in the format 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        _buildOutlineButton(icon: Icons.add, press: () {
          setState(() {
            numOfItems++;
          });
        }),
      ],
    );
  }

  Widget _buildOutlineButton({@required IconData icon, @required Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          child: Icon(icon),
          onPressed: press,
        ),
      );
  }
}
