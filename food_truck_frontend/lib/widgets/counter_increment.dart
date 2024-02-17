import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterIncrement extends StatefulWidget {
  const CounterIncrement(
      {super.key,
      required this.count,
      required this.incCount,
      required this.decCount});
  final int count;
  final void Function() incCount;
  final void Function() decCount;
  @override
  State<CounterIncrement> createState() => _CounterIncrementState();
}

class _CounterIncrementState extends State<CounterIncrement> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          IconButton(
            onPressed: widget.decCount,
            icon: FaIcon(FontAwesomeIcons.minus),
          ),
          Text(
            widget.count.toString(),
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          IconButton(
            onPressed: widget.incCount,
            icon: FaIcon(FontAwesomeIcons.plus),
          ),
        ],
      ),
    );
  }
}
