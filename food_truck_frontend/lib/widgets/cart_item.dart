import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_truck_frontend/widgets/counter_increment.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
    required this.count,
    required this.addOn,
    required this.preference,
    required this.photo,
    required this.price,
    required this.itemName,
  });
  final int count;
  final String addOn;
  final String preference;
  final String itemName;
  final String photo;
  final String price;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 1;

  void incrementCount() {
    setState(() {
      quantity++;
    });
  }

  void decrementCount() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      } else {
        // Handle the case where quantity is already less than 1
        // You can choose to show a message or perform any other action
        // For example, you might want to disable the decrement button
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = int.parse(widget.price) * quantity;
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
                  widget.itemName,
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
                      "${totalPrice}",
                      style: TextStyle(color: Color(0xff2B964F)),
                    ),
                    // Spacer(),
                    SizedBox(
                      width: 20,
                    ),
                    CounterIncrement(
                      // Define the variable quantity
                      count: widget.count,
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
            'assets/images/${widget.photo}.png',
            width: 200,
            height: 200,
          ),
        ),
      ],
    );
  }
}
