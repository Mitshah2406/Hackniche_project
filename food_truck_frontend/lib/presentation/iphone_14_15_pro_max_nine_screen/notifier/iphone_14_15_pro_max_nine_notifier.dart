import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mit_s_application3/presentation/iphone_14_15_pro_max_nine_screen/models/iphone_14_15_pro_max_nine_model.dart';
part 'iphone_14_15_pro_max_nine_state.dart';

final iphone1415ProMaxNineNotifier = StateNotifierProvider<
    Iphone1415ProMaxNineNotifier, Iphone1415ProMaxNineState>(
  (ref) => Iphone1415ProMaxNineNotifier(Iphone1415ProMaxNineState(
    iphone1415ProMaxNineModelObj: Iphone1415ProMaxNineModel(),
  )),
);

/// A notifier that manages the state of a Iphone1415ProMaxNine according to the event that is dispatched to it.
class Iphone1415ProMaxNineNotifier
    extends StateNotifier<Iphone1415ProMaxNineState> {
  Iphone1415ProMaxNineNotifier(Iphone1415ProMaxNineState state)
      : super(state) {}
}
