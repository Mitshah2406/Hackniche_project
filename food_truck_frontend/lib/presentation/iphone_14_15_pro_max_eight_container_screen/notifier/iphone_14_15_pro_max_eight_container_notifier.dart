import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:food_truck_frontend/presentation/iphone_14_15_pro_max_eight_container_screen/models/iphone_14_15_pro_max_eight_container_model.dart';
part 'iphone_14_15_pro_max_eight_container_state.dart';

final iphone1415ProMaxEightContainerNotifier = StateNotifierProvider<
        Iphone1415ProMaxEightContainerNotifier,
        Iphone1415ProMaxEightContainerState>(
    (ref) => Iphone1415ProMaxEightContainerNotifier(
        Iphone1415ProMaxEightContainerState(
            iphone1415ProMaxEightContainerModelObj:
                Iphone1415ProMaxEightContainerModel())));

/// A notifier that manages the state of a Iphone1415ProMaxEightContainer according to the event that is dispatched to it.
class Iphone1415ProMaxEightContainerNotifier
    extends StateNotifier<Iphone1415ProMaxEightContainerState> {
  Iphone1415ProMaxEightContainerNotifier(
      Iphone1415ProMaxEightContainerState state)
      : super(state);
}
