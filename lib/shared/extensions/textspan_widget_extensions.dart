import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

const _kNewLine = '\n';
const _kSpace = ' ';

extension TextSpanWidgetExtension on TextSpan {
  static TextSpan get breaker {
    return const TextSpan(text: _kNewLine);
  }

  TextSpan get bold {
    final boldStyle = switch (style) {
      (TextStyle? s) when s != null => s.copyWith(fontWeight: FontWeight.bold),
      _ => const TextStyle(fontWeight: FontWeight.bold),
    };
    return TextSpan(text: text, style: boldStyle);
  }

  TextSpan get w200 {
    final boldStyle = switch (style) {
      (TextStyle? s) when s != null => s.copyWith(fontWeight: FontWeight.w200),
      _ => const TextStyle(fontWeight: FontWeight.w200),
    };
    return TextSpan(text: text, style: boldStyle);
  }

  TextSpan get w300 {
    final boldStyle = switch (style) {
      (TextStyle? s) when s != null => s.copyWith(fontWeight: FontWeight.w300),
      _ => const TextStyle(fontWeight: FontWeight.w300),
    };
    return TextSpan(text: text, style: boldStyle);
  }

  TextSpan get w400 {
    final boldStyle = switch (style) {
      (TextStyle? s) when s != null => s.copyWith(fontWeight: FontWeight.w400),
      _ => const TextStyle(fontWeight: FontWeight.w400),
    };
    return TextSpan(text: text, style: boldStyle);
  }

  TextSpan get w500 {
    final boldStyle = switch (style) {
      (TextStyle? s) when s != null => s.copyWith(fontWeight: FontWeight.w500),
      _ => const TextStyle(fontWeight: FontWeight.w500),
    };
    return TextSpan(text: text, style: boldStyle);
  }

  TextSpan get w600 {
    final boldStyle = switch (style) {
      (TextStyle? s) when s != null => s.copyWith(fontWeight: FontWeight.w600),
      _ => const TextStyle(fontWeight: FontWeight.w600),
    };
    return TextSpan(text: text, style: boldStyle);
  }

  TextSpan color(int color) {
    TextStyle coloredStyle;
    if (style == null) {
      coloredStyle = TextStyle(color: color.asColor);
    } else {
      coloredStyle = style!.copyWith(color: color.asColor);
    }
    return TextSpan(text: text, style: coloredStyle);
  }

  TextSpan get red500 => color(CommonColors.red500);

  TextSpan get gray300 => color(CommonColors.gray300);

  TextSpan get gray400 => color(CommonColors.gray400);

  TextSpan get gray500 => color(CommonColors.gray500);

  TextSpan get lineThrough {
    TextStyle lineThroughStyle;
    if (style == null) {
      lineThroughStyle = TextStyle(
          decoration: TextDecoration.lineThrough,
          decorationColor: style?.color);
    } else {
      lineThroughStyle = style!.copyWith(
          decoration: TextDecoration.lineThrough,
          decorationColor: style?.color);
    }
    return TextSpan(text: text, style: lineThroughStyle);
  }

  static WidgetSpan get gap {
    return const WidgetSpan(child: SizedBox(height: LayoutDimens.s4));
  }

  static TextSpan get spacer {
    return const TextSpan(text: _kSpace);
  }

  TextSpan get xs {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xs),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xs),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get sm {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.sm),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.sm),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get base {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.base),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.base),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get lg {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.lg),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.lg),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get xl {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xl),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xl),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get xl2 {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xl2),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xl2),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get xl3 {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xl3),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xl3),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get xl4 {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xl4),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xl4),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get xl5 {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xl5),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xl5),
    };
    return TextSpan(text: text, style: sizeStyle);
  }

  TextSpan get xl6 {
    final sizeStyle = switch (style) {
      (TextStyle? s) when s != null =>
        s.copyWith(fontSize: TextDimens.baseSize * TextDimens.xl6),
      _ => const TextStyle(fontSize: TextDimens.baseSize * TextDimens.xl6),
    };
    return TextSpan(text: text, style: sizeStyle);
  }
}
