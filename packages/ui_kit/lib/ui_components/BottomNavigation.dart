import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class BottomNavigationHelper {

  // Метод для создания навигации с индексом
  Widget create({int initialIndex = 0}) {
    return _BottomNavigationWidget(initialIndex: initialIndex);
  }
}

// Внутренний виджет
class _BottomNavigationWidget extends StatefulWidget {
  final int initialIndex;

  const _BottomNavigationWidget({required this.initialIndex});

  @override
  State<_BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<_BottomNavigationWidget> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      onTap: (index) => setState(() => _currentIndex = index),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ui.colors.accent,
      unselectedItemColor: ui.colors.inputBackground,
      selectedLabelStyle: TextStyle(
        color: ui.colors.accent,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        color: ui.colors.inputBackground,
        fontSize: 12,
      ),
      items: [
        BottomNavigationBarItem(
          icon: _currentIndex == 0 ? ui.images.homeActiv(size: 32) : ui.images.home(size: 32),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 1 ? ui.images.katalogActiv(size: 32) : ui.images.katalog(size: 32),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 2 ? ui.images.projectActiv(size: 32) : ui.images.project(size: 32),
          label: 'Проекты',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 3 ? ui.images.profileActiv(size: 32) : ui.images.profile(size: 32),
          label: 'Профиль',
        ),
      ],
    );
  }
}