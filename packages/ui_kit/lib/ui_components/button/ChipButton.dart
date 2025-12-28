import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class ChipButton {

  // Общий стиль для всех кнопок
  ButtonStyle _baseStyle() {
    return ElevatedButton.styleFrom(
      minimumSize: const Size(96, 40),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  // Основная кнопка - акцент цвет
  Widget primary({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
  }) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: _baseStyle().copyWith(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => enabled ? ui.colors.accent : ui.colors.accentInactive,
        ),
        foregroundColor: MaterialStateProperty.all(
          enabled ? ui.colors.white : ui.colors.description, // Меняем цвет текста
        ),
      ),
      child: _buildText(text),
    );
  }

  // Неактивная кнопка - без акцента
  Widget unActive({
    required String text,
    VoidCallback? onPressed,
    bool enabled = true,
  }) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: _baseStyle().copyWith(
        backgroundColor: MaterialStateProperty.all(ui.colors.inputBg),
        foregroundColor: MaterialStateProperty.all(ui.colors.description), // description цвет
      ),
      child: _buildText(text),
    );
  }

  // Общий метод для создания текста
  Widget _buildText(String text) {
    return Text(
      text,
      style: ui.typography.captionSemibold,
    );
  }
}