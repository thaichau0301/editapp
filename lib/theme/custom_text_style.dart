import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Label text style
  static get labelLargeInterBlack900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get labelLargeRobotoBlack900 =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: appTheme.black900.withOpacity(0.36),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
// Title style
  static get titleMediumRoboto => theme.textTheme.titleMedium!.roboto;
  static get titleMediumRobotoGray50 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumRobotoGray5001 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumRobotoMedium =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
}
