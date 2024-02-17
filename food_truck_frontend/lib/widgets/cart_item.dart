import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SizedBox(
              height: 20,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Food Item",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "italian",
                  style: TextStyle(
                    color: Color(0xff999595),
                    fontSize: 12,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "\$310",
                      style: TextStyle(color: Color(0xff2B964F)),
                    ),
                    // Spacer(),
                    SizedBox(
                      width: 20,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.minus),
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.plus),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ]),
        ),
        Positioned(
          left: -20,
          child: Image.asset(
            'assets/images/cart_item_4.png',
            width: 200,
            height: 200,
          ),
        ),
      ],
    );
  }
}
