import 'package:flutter/material.dart';
import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/presentation/iphone_14_15_pro_max_eight_page/notifier/iphone_14_15_pro_max_eight_notifier.dart';
import 'package:food_truck_frontend/widgets/custom_search_view.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [],
        ));
  }
}
