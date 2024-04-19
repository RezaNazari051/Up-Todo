import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextStyleExtensions on BuildContext {
  TextStyle getTextStyle(String styleName) {
    final TextTheme textTheme = Theme.of(this).textTheme;

    switch (styleName) {
      case 'headline1':
        return textTheme.headline1!;
      case 'headline2':
        return textTheme.headline2!;
      case 'headline3':
        return textTheme.headline3!;
      case 'headline4':
        return textTheme.headline4!;
      case 'headline5':
        return textTheme.headline5!;
      case 'headline6':
        return textTheme.headline6!;
      case 'subtitle1':
        return textTheme.subtitle1!;
      case 'subtitle2':
        return textTheme.subtitle2!;
      case 'bodyText1':
        return textTheme.bodyText1!;
      case 'bodyText2':
        return textTheme.bodyText2!;
      case 'caption':
        return textTheme.caption!;
      case 'button':
        return textTheme.button!;
      case 'bodySmall35':
        return textTheme.bodySmall!.copyWith(fontSize: 35.sp);
      case 'bodyMedium':
        return textTheme.bodyMedium!;
      case 'bodySmall':
        return textTheme.bodySmall!;
      case 'bodyLarge':
        return textTheme.bodyLarge!;
      case 'titleLarge':
        return textTheme.titleLarge!;

      default:
        throw Exception('Undefined style name: $styleName');
    }
  }
}
