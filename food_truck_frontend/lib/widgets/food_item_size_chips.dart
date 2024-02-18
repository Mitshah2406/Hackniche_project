import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class FoodItemSizeChips extends StatefulWidget {
  const FoodItemSizeChips(
      {super.key, required this.sizeString, required this.onClickChip});
  final String sizeString;
  final void Function() onClickChip;

  @override
  State<FoodItemSizeChips> createState() => _FoodItemSizeChipsState();
}

class _FoodItemSizeChipsState extends State<FoodItemSizeChips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 226, 221, 221),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        widget.sizeString,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
        ),
      ),
    );
  }
}
