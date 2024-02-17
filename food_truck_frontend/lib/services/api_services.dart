import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_truck_frontend/models/menuitem.dart';
import 'package:food_truck_frontend/services/constants.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<MenuItem>> getMenuItems() async {
    final response = await http.get(
      Uri.parse(Constants.BASE_URL),
    );
    if (response.statusCode == 200) {
      final List res = jsonDecode(response.body);
      return res.map((e) => MenuItem.fromJson(e)).toList();
    } else {
      print(response.body);
      throw Exception('Failed to load menu items');
    }
  }
}

final dataProvider = Provider<ApiServices>((ref) => ApiServices());
