import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// A collection of colors used in the Astria Flutter app.
abstract final class AstriaColors {
  static const Color bgDark = Color(0xFF2b3940);

  static const Color bg = Color(0xFF3f545e);

  static const Color dark = Color(0xFF171e21);

  static const Color foreground = Color(0xFFefefef);

  static const Color foregroundDark = Color(0xFF222222);

  static const Color highlight = Color(0xFF03fff6);

  static const Color altHighlight = Color(0xFF009c97);

  static const LinearGradient gradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xff00ff8f),
      Color(0xff00a1ff),
    ],
    tileMode: TileMode.mirror,
  );

  static const ColorScheme colorScheme = ColorScheme(
    primary: highlight,
    primaryContainer: altHighlight,
    secondary: altHighlight,
    secondaryContainer: highlight,
    surface: bg,
    background: bg,
    error: Color(0xFFB00020),
    onPrimary: foregroundDark,
    onSecondary: foreground,
    onSurface: foreground,
    onBackground: foreground,
    onError: foreground,
    brightness: Brightness.dark,
  );
}