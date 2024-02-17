import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/widgets/food_item_size_chips.dart';
import 'package:food_truck_frontend/widgets/radio_button_wrapper.dart';
import 'package:food_truck_frontend/widgets/slider_btn.dart';

class ItemDetailsPage extends ConsumerStatefulWidget {
  const ItemDetailsPage({super.key});

  @override
  ItemDetailsPageState createState() => ItemDetailsPageState();
}

class ItemDetailsPageState extends ConsumerState<ItemDetailsPage> {
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
                      imagePath: 'assets/images/item_detail_image.png',
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
                        "Veg Chilli Pizza",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                      Spacer(),
                      Text(
                        "\$250",
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
                      FoodItemSizeChips(sizeString: "S", onClickChip: () => {}),
                      SizedBox(width: 10),
                      FoodItemSizeChips(sizeString: "M", onClickChip: () => {}),
                      SizedBox(width: 10),
                      FoodItemSizeChips(sizeString: "L", onClickChip: () => {}),
                      Spacer(),
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
                  ),
                  RadioButtonWrapper(
                    title: "Choice of add on",
                    radioButtons: [
                      "Pepper Julienned",
                      'Baby Spinach',
                      'Mushroom'
                    ],
                  ),
                  RadioButtonWrapper(
                    title: "Choice of preparation",
                    radioButtons: ["Jain", 'Vegetarian', 'Non vegeterian'],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SliderButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
