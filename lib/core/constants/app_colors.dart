import 'package:flutter/material.dart';

/// App-wide color constants.
/// Following the Performance-First guide, all colors are defined as const.
class AppColors {
  const AppColors._();

  // --- Primary Palette ---
  static const Color primary = Color(0xFF000000); // Black
  static const Color primaryLight = Color(0xFF333333);
  static const Color primaryDark = Color(0xFF000000);

  // --- Secondary / Accent ---
  static const Color secondary = Color(0xFF2D6EFF); // Blue
  static const Color accent = Color(0xFF2D6EFF);

  // --- Semantic Colors ---
  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF2D6EFF);

  // --- Neutral Colors (Light) ---
  static const Color backgroundLight = Color(0xFFF5F5F5); // Base
  static const Color surfaceLight = Colors.white;
  static const Color textPrimaryLight = Color(0xFF000000);
  static const Color textSecondaryLight = Color(0xFF757575);

  // --- Neutral Colors (Dark) ---
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB0B0B0);

  // --- Misc ---
  static const Color divider = Color(0xFFE0E0E0);
  static const Color border = Color(0xFFBDBDBD);
}

