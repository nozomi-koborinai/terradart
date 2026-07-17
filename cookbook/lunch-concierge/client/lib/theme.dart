import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Indigo noren cloth, unbleached paper, sumi ink, vermilion stamp.
abstract final class LunchPalette {
  static const noren = Color(0xFF152C44);
  static const machine = Color(0xFF1D3A5C);
  static const paper = Color(0xFFF3EFE6);
  static const ticket = Color(0xFFFCFAF3);
  static const ink = Color(0xFF23272E);
  static const muted = Color(0xFF5A6270);
  static const accent = Color(0xFFC13A1F);
  static const hairline = Color(0xFFDDD5C2);
}

TextStyle displayTextStyle({
  double? size,
  FontWeight weight = FontWeight.w900,
  Color color = LunchPalette.ink,
  double? height,
  double? letterSpacing,
}) {
  return GoogleFonts.zenOldMincho(
    fontSize: size,
    fontWeight: weight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
  );
}

TextStyle monoTextStyle({
  double? size,
  FontWeight weight = FontWeight.w500,
  Color color = LunchPalette.muted,
  double? height,
  double? letterSpacing,
}) {
  return GoogleFonts.ibmPlexMono(
    fontSize: size,
    fontWeight: weight,
    color: color,
    height: height,
    letterSpacing: letterSpacing,
  );
}

String formatYen(int amount) {
  final digits = amount.toString();
  final buffer = StringBuffer('¥');
  for (var i = 0; i < digits.length; i++) {
    buffer.write(digits[i]);
    final remaining = digits.length - 1 - i;
    if (remaining > 0 && remaining % 3 == 0) {
      buffer.write(',');
    }
  }
  return buffer.toString();
}
