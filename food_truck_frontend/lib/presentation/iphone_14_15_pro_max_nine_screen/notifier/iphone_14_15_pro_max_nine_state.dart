// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_max_nine_notifier.dart';

/// Represents the state of Iphone1415ProMaxNine in the application.
class Iphone1415ProMaxNineState extends Equatable {
  Iphone1415ProMaxNineState({this.iphone1415ProMaxNineModelObj});

  Iphone1415ProMaxNineModel? iphone1415ProMaxNineModelObj;

  @override
  List<Object?> get props => [
        iphone1415ProMaxNineModelObj,
      ];

  Iphone1415ProMaxNineState copyWith(
      {Iphone1415ProMaxNineModel? iphone1415ProMaxNineModelObj}) {
    return Iphone1415ProMaxNineState(
      iphone1415ProMaxNineModelObj:
          iphone1415ProMaxNineModelObj ?? this.iphone1415ProMaxNineModelObj,
    );
  }
}
