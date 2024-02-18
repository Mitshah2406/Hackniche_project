import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_truck_frontend/presentation/orderAknowledge.dart';
import 'package:food_truck_frontend/services/constants.dart';
import 'package:food_truck_frontend/widgets/cart_item.dart';
import 'package:food_truck_frontend/widgets/slider_btn.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen(
      {super.key,
      required this.count,
      required this.addOn,
      required this.preference,
      required this.photo,
      required this.price,
      required this.itemName});
  final int count;
  final String addOn;
  final String preference;
  final String itemName;
  final String price;
  final String photo;

  @override
  CartScreenState createState() => CartScreenState();
}

class CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.count);
    print(widget.addOn);
    print(widget.preference);
    print(widget.itemName);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: Text(
          "My Cart",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CartItem(
                  count: widget.count,
                  addOn: widget.addOn,
                  preference: widget.preference,
                  itemName: widget.itemName,
                  photo: widget.photo,
                  price: widget.price),
              SizedBox(
                height: 30,
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Payment Summary",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 24),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        "\$930",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        widget.price,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      Text(
                        "\$930",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SliderButton(
                    text: "Place Order",
                    onSlide: () async {
                      {
                        print("api call");
                        Response response = await http.post(
                          Uri.parse(Constants.IP + "place-order/"),
                          headers: {
                            'Content-Type': 'application/json; charset=UTF-8',
                          },
                          body: jsonEncode(<String, dynamic>{
                            'customerId': '1feryur3434343uhfufdnndndfr33', //
                            'customerName': 'John Doe',
                            'orderDeadline': new DateTime.now(),
                            'price': widget.price,
                            'addon': widget.addOn,
                            'preference': widget.preference,
                            'orderItem': [
                              {'itemName': widget.itemName, 'qty': widget.count}
                            ]
                          }),
                        );
                        await Future.delayed(
                          const Duration(seconds: 2),
                          () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => AfterOrderScreen(),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
