import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RadioButtonWrapper extends StatefulWidget {
  final String title;
  final List<String> radioButtons;

  const RadioButtonWrapper({
    super.key,
    required this.title,
    required this.radioButtons,
  });

  @override
  State<RadioButtonWrapper> createState() => _RadioButtonWrapperState();
}

class _RadioButtonWrapperState extends State<RadioButtonWrapper> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff4CF986),
                fontSize: 20,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/addon!.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.radioButtons[0],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      // Radio(
                      //   value: 0,
                      //   groupValue: null,
                      //   onChanged: (value) {
                      //     value = 0;
                      //   },
                      // ),
                      Radio<int>(
                        value: 1,
                        groupValue: selectedOption,
                        activeColor: Color(
                            0xff2B964F), // Change the active radio button color here
                        fillColor: MaterialStateProperty.all(Color(
                            0xff2B964F)), // Change the fill color when selected
                        splashRadius:
                            20, // Change the splash radius when clicked
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/addon2.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.radioButtons[1],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Radio<int>(
                        value: 2,
                        groupValue: selectedOption,
                        activeColor: Color(
                            0xff2B964F), // Change the active radio button color here
                        fillColor: MaterialStateProperty.all(Color(
                            0xff2B964F)), // Change the fill color when selected
                        splashRadius:
                            20, // Change the splash radius when clicked
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/addon3.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        widget.radioButtons[2],
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Radio<int>(
                        value: 3,
                        groupValue: selectedOption,
                        activeColor: Color(
                            0xff2B964F), // Change the active radio button color here
                        fillColor: MaterialStateProperty.all(Color(
                            0xff2B964F)), // Change the fill color when selected
                        splashRadius:
                            20, // Change the splash radius when clicked
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
