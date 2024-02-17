import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_truck_frontend/widgets/counter_increment.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int count = 1;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void decrementCount() {
    setState(() {
      if (count > 0) {
        count--;
      } else {
        // Handle the case where count is already less than 1
        // You can choose to show a message or perform any other action
        // For example, you might want to disable the decrement button
      }
    });
  }

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
                    CounterIncrement(
                      // Define the variable count
                      count: count,
                      incCount: incrementCount,
                      decCount: decrementCount,
                    ),
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
