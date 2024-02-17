import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // : MainAxisAlignment.spaceBetween,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Hello Mit\n What do you want to eat?",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 28,
                  ),
                ),
                Image.network(
                  "https://cdn-icons-png.flaticon.com/512/219/219969.png",
                  height: 48,
                  width: 48,
                )
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
