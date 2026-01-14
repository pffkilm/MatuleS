import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Menu extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback? onPressed; // Добавляем этот параметр

  const Menu({
    super.key,
    required this.text,
    this.isActive = false,
    this.onPressed, // Добавляем сюда
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, // Используем здесь
      style: TextButton.styleFrom(
        backgroundColor: isActive ? ui.colors.accent : ui.colors.inputBg,
        foregroundColor: isActive ? ui.colors.white : ui.colors.description,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}