import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49129F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.brown,
  Colors.deepOrange,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'selectedColor must be between 0-6');
  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      useMaterial3: true,
      brightness: Brightness.dark,
    );
  }
}
