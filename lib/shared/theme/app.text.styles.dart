import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  static TextStyle normal = GoogleFonts.dmSans(
    fontSize: TextDimens.baseSize,
  );

  static TextStyle specialLargeBold = GoogleFonts.dmSans(
    fontSize: TextDimens.baseSize * TextDimens.xl2,
    fontWeight: FontWeight.w900,
  );

  static TextStyle Function(BuildContext context) specialLargeOf =
      (BuildContext context) => GoogleFonts.dmSans(
    textStyle: Theme.of(context).textTheme.displayLarge,
    fontSize: TextDimens.baseSize * TextDimens.xl2,
  );

  static TextStyle Function(BuildContext context) specialLargeBoldOf =
      (BuildContext context) => GoogleFonts.dmSans(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: TextDimens.baseSize * TextDimens.xl2,
            fontWeight: FontWeight.w900,
          );

  static TextStyle Function(BuildContext context) specialLargeItalicBoldOf =
      (BuildContext context) => specialLargeBoldOf(context).copyWith(
            fontStyle: FontStyle.italic,
          );

  static TextStyle Function(BuildContext context) smallOf =
      (BuildContext context) => GoogleFonts.dmSans(
            textStyle: Theme.of(context).textTheme.displaySmall,
            fontSize: TextDimens.baseSize * TextDimens.xs,
          );

  static TextStyle Function(BuildContext context) normalOf =
      (BuildContext context) => GoogleFonts.dmSans(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontSize: TextDimens.baseSize,
          );

  static TextStyle Function(BuildContext context) normalBoldOf =
      (BuildContext context) => GoogleFonts.dmSans(
            textStyle: Theme.of(context).textTheme.displayMedium,
            fontSize: TextDimens.baseSize,
            fontWeight: FontWeight.w900,
          );
}
