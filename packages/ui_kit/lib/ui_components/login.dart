import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class LogoButtons {
  const LogoButtons();

  // Кнопка "Войти с VK"
  Widget vk({VoidCallback? onPressed, bool enabled = true}) {
    return _buildButton(
      ui.images.VK(size: 32),
      "Войти с VK",
      onPressed,
      enabled,
    );
  }

  // Кнопка "Войти с Yandex"
  Widget yandex({VoidCallback? onPressed, bool enabled = true}) {
    return _buildButton(
      ui.images.YANDEX(size: 32),
      "Войти с Yandex",
      onPressed,
      enabled,
    );
  }

  // Общий метод для всех соцкнопок
  Widget _buildButton(Widget icon, String text, VoidCallback? onPressed, bool enabled) {
    return SizedBox(
      width: 335, // Фиксированная ширина
      height: 56,  // Фиксированная высота
      child: TextButton(
        onPressed: enabled ? onPressed : null,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: ui.colors.inputStroke2,
            width: 1.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: ui.colors.black,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}