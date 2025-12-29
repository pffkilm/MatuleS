import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class SimpleSearchBar extends StatefulWidget {
  const SimpleSearchBar({super.key});

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  final TextEditingController _controller = TextEditingController();
  bool _showClose = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _showClose = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 48,
      decoration: BoxDecoration(
        color: ui.colors.input,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: ui.colors.inputStroke2,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.only(left: 14, right: 19),
      child: Row(
        children: [
          ui.images.search(),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Искать описание',
                hintStyle: ui.typography.headlineRegular.copyWith(
                  color: ui.colors.inputText,
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ),
          if (_showClose)
            GestureDetector(
              onTap: () {
                _controller.clear();
              },
              child: ui.images.close(),
            ),
        ],
      ),
    );
  }
}

