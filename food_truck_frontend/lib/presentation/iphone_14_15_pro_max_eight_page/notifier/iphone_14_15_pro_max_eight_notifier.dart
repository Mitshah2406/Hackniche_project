import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mit_s_application3/presentation/iphone_14_15_pro_max_eight_page/models/iphone_14_15_pro_max_eight_model.dart';
part 'iphone_14_15_pro_max_eight_state.dart';

final iphone1415ProMaxEightNotifier = StateNotifierProvider<
    Iphone1415ProMaxEightNotifier, Iphone1415ProMaxEightState>(
  (ref) => Iphone1415ProMaxEightNotifier(Iphone1415ProMaxEightState(
    searchController: TextEditingController(),
    iphone1415ProMaxEightModelObj: Iphone1415ProMaxEightModel(),
  )),
);

/// A notifier that manages the state of a Iphone1415ProMaxEight according to the event that is dispatched to it.
class Iphone1415ProMaxEightNotifier
    extends StateNotifier<Iphone1415ProMaxEightState> {
  Iphone1415ProMaxEightNotifier(Iphone1415ProMaxEightState state)
      : super(state) {}
}
