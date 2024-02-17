import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AfterOrderScreen extends StatefulWidget {
  const AfterOrderScreen({super.key});

  @override
  State<AfterOrderScreen> createState() => _AfterOrderScreenState();
}

class _AfterOrderScreenState extends State<AfterOrderScreen> {
  @override
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Round image at the top
              Container(
                width: 150, // Adjust the size as needed
                height: 150, // Adjust the size as needed
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/round_image.jpg'), // Replace 'assets/round_image.jpg' with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20), // Spacer between image and button
              // Button centered horizontally at the bottom
              ElevatedButton(
                onPressed: () {
                  // Add your button functionality here
                },
                child: Text('Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}