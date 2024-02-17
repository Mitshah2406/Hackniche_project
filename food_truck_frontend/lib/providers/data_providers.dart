import 'package:food_truck_frontend/core/app_export.dart';
import 'package:food_truck_frontend/models/menuitem.dart';
import 'package:food_truck_frontend/services/api_services.dart';

final menuDataProvider = FutureProvider<List<MenuItem>>((ref) {
  return ref.watch(dataProvider).getMenuItems();
});
