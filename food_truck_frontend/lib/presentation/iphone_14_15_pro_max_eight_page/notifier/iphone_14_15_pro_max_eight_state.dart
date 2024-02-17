// ignore_for_file: must_be_immutable

part of 'iphone_14_15_pro_max_eight_notifier.dart';

/// Represents the state of Iphone1415ProMaxEight in the application.
class Iphone1415ProMaxEightState extends Equatable {
  Iphone1415ProMaxEightState({
    this.searchController,
    this.iphone1415ProMaxEightModelObj,
  });

  TextEditingController? searchController;

  Iphone1415ProMaxEightModel? iphone1415ProMaxEightModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone1415ProMaxEightModelObj,
      ];

  Iphone1415ProMaxEightState copyWith({
    TextEditingController? searchController,
    Iphone1415ProMaxEightModel? iphone1415ProMaxEightModelObj,
  }) {
    return Iphone1415ProMaxEightState(
      searchController: searchController ?? this.searchController,
      iphone1415ProMaxEightModelObj:
          iphone1415ProMaxEightModelObj ?? this.iphone1415ProMaxEightModelObj,
    );
  }
}
