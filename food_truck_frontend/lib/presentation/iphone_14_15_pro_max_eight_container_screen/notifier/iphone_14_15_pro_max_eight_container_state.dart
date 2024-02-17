// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_max_eight_container_notifier.dart';

/// Represents the state of Iphone1415ProMaxEightContainer in the application.
class Iphone1415ProMaxEightContainerState extends Equatable {
  Iphone1415ProMaxEightContainerState(
      {this.iphone1415ProMaxEightContainerModelObj});

  Iphone1415ProMaxEightContainerModel? iphone1415ProMaxEightContainerModelObj;

  @override
  List<Object?> get props => [
        iphone1415ProMaxEightContainerModelObj,
      ];

  Iphone1415ProMaxEightContainerState copyWith(
      {Iphone1415ProMaxEightContainerModel?
          iphone1415ProMaxEightContainerModelObj}) {
    return Iphone1415ProMaxEightContainerState(
      iphone1415ProMaxEightContainerModelObj:
          iphone1415ProMaxEightContainerModelObj ??
              this.iphone1415ProMaxEightContainerModelObj,
    );
  }
}
