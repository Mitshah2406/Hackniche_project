import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineLargeInterWhiteA700 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeInterWhiteA700_1 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  // Poppins text style
  static get poppinsWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w900,
      ).poppins;
  // Poppinsffffffff text style
  static get poppinsffffffff => TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 70.fSize,
        fontWeight: FontWeight.w600,
      ).poppins;
  static get poppinsffffffffBlack => TextStyle(
        color: Color(0XFFFFFFFF),
        fontSize: 80.fSize,
        fontWeight: FontWeight.w900,
      ).poppins;
  // Title text style
  static get titleLargeGreen200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green200,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
