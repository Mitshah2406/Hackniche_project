import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_truck_frontend/presentation/QrScanner.dart';

class AfterOrderScreen extends StatefulWidget {
  const AfterOrderScreen({super.key});

  @override
  State<AfterOrderScreen> createState() => _AfterOrderScreenState();
}

class _AfterOrderScreenState extends State<AfterOrderScreen> {
  @override
  @override
  Widget build(BuildContext context) {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Round image at the top
            Container(
              width: 200, // Adjust the size as needed
              height: 200, // Adjust the size as needed
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/Success_Illustration.png'), // Replace 'assets/round_image.jpg' with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 200), // Spacer between image and button
            // Button centered horizontally at the bottom
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => MyScanner(id: "123"), //senOrderId here
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFF2b964f)), // Button color
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(300, 50)), // Width: 300, Height: 50
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(57)), // Border radius of 50
                  ),
                ),
              ),
              child: Text(
                'Complete Order',
                style: TextStyle(
                  color: Colors.white, // White text color
                  fontWeight: FontWeight.bold, // Bold text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
