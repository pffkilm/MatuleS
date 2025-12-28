import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class Toggle extends StatefulWidget {
  final bool isActive;
  final ValueChanged<bool>? onChanged;

  const Toggle({
    super.key,
    this.isActive = false,
    this.onChanged,
  });

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        widget.onChanged?.call(_isActive);
      },
      child: Container(
        width: 48,
        height: 28,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _isActive ? ui.colors.accent : Colors.grey[300],
        ),
        child: Align(
          alignment: _isActive ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}