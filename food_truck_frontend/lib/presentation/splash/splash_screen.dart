import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_truck_frontend/presentation/iphone_14_15_pro_max_eight_container_screen/iphone_14_15_pro_max_eight_container_screen.dart';
import 'package:food_truck_frontend/presentation/iphone_14_15_pro_max_eight_container_screen/models/iphone_14_15_pro_max_eight_container_model.dart';
import 'package:food_truck_frontend/presentation/iphone_14_15_pro_max_eight_page/iphone_14_15_pro_max_eight_page.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sih2023/views/intro_screen.dart';
// import 'package:flutter_session_manager/flutter_session_manager.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    showIntro();
  }

  void showIntro() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>
              const Iphone1415ProMaxEightContainerScreen(),
        ),
      );

      // Shared preferences should be used here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/SPLASH.png",
                ),
                const SizedBox(
                  height: 25,
                ),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 54,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .5,
                      ),
                    ),
                    children: const [
                      TextSpan(
                          text: 'Food', style: TextStyle(color: Colors.white)),
                      TextSpan(
                        text: 'ies',
                        style: TextStyle(color: Color(0xff2B964F)),
                      )
                    ],
                  ),
                  textScaleFactor: 0.5,
                )
              ],
            ),
          ),
        ));
  }
}
