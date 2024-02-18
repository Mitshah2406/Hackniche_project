import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/models/menuitem.dart';
import 'package:food_truck_frontend/presentation/cart_screen/cart_screen.dart';
import 'package:food_truck_frontend/widgets/counter_increment.dart';
import 'package:food_truck_frontend/widgets/food_item_size_chips.dart';
import 'package:food_truck_frontend/widgets/radio_button_wrapper.dart';
import 'package:food_truck_frontend/widgets/slider_btn.dart';

class ItemDetailsPage extends ConsumerStatefulWidget {
  const ItemDetailsPage({super.key, required this.menuItem});
  final MenuItem menuItem;
  @override
  ItemDetailsPageState createState() => ItemDetailsPageState();
}

class ItemDetailsPageState extends ConsumerState<ItemDetailsPage> {
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

  List addOns = ["Pepper Julienned", 'Baby Spinach', 'Mushroom'];
  List preferences = ["Jain", 'Vegetarian', 'Non vegeterian'];
  int addOn = 0;
  int preference = 0;
  void onAddOnChange(int index) {
    setState(() {
      addOn = index;
      // preference = index;
    });
  }

  void onPreferenceChange(int index) {
    setState(() {
      // addOn = index;
      preference = index;
    });
  }

  // void onPreferenceChange(int index) {
  //   if (index == 0) {
  //     setState(() {
  //       preference = "Jain";
  //     });
  //   } else if (index == 1) {
  //     setState(() {
  //       preference = "Vegetarian";
  //     });
  //   } else if (index == 2) {
  //     setState(() {
  //       preference = "Non Vegetarian";
  //     });
  //   }
  // }

  String selectedSize = ""; // Variable to store the selected size

  void handleChipSelection(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color(0xff4CF986),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(180),
                      bottomRight: Radius.circular(180),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Transform.translate(
                    offset: Offset(0, 95), // Move image down by 50 pixels
                    child: CustomImageView(
                      imagePath: 'assets/images/${widget.menuItem.photo}.png',
                      width: 220,
                      height: 220,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        widget.menuItem.itemName!,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        "Rs.250",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color.fromARGB(255, 222, 227, 224)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("⏰ 15 minutes"),
                      SizedBox(width: 20),
                      Text("🔥 350 calories"),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Flatbread dough topped with tomatoes, cheese, anchovies, mushrooms, onions, olives and vegetables.",
                    style: TextStyle(color: Color(0xff858992)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      FoodItemSizeChips(
                          sizeString: "S",
                          onClickChip: () => {
                                handleChipSelection(
                                    "S") // Call the function to handle the chip selection
                              }),
                      SizedBox(width: 10),
                      FoodItemSizeChips(
                          sizeString: "M",
                          onClickChip: () => {handleChipSelection("M")}),
                      SizedBox(width: 10),
                      FoodItemSizeChips(
                          sizeString: "L",
                          onClickChip: () => {handleChipSelection("L")}),
                      Spacer(),
                      CounterIncrement(
                        // Define the variable count
                        count: count,
                        incCount: incrementCount,
                        decCount: decrementCount,
                      ),
                    ],
                  ),
                  RadioButtonWrapper(
                    title: "Choice of add on",
                    radioButtons: [
                      "Pepper Julienned",
                      'Baby Spinach',
                      'Mushroom'
                    ],
                    onChange: onAddOnChange,
                  ),
                  RadioButtonWrapper(
                    title: "Choice of preparation",
                    radioButtons: ["Jain", 'Vegetarian', 'Non vegeterian'],
                    onChange: onPreferenceChange,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SliderButton(
                    text: "Order now",
                    onSlide: () async {
                      await Future.delayed(
                        const Duration(seconds: 2),
                        () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => CartScreen(
                                count: count,
                                addOn: addOns[addOn],
                                preference: preferences[preference],
                                itemName: widget.menuItem.itemName!,
                                photo: widget.menuItem.photo!,
                                price: widget.menuItem.price.toString()),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
