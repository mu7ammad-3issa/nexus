// lib/features/chatbot/ui/widgets/typing_indicator.dart
import 'package:flutter/material.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class TypingIndicator extends StatefulWidget {
  const TypingIndicator({super.key});

  @override
  State<TypingIndicator> createState() => _TypingIndicatorState();
}

class _TypingIndicatorState extends State<TypingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14.5, horizontal: 13.5),
        decoration: BoxDecoration(
          color: ColorsManager.violet300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) {
            return AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final double delay = index * 0.2;
                final double anmValue =
                    (_controller.value - delay).clamp(0.0, 1.0);
                final double yOffset = -20 * (anmValue * (1 - anmValue) * 4);
                return Transform.translate(
                  offset: Offset(0, yOffset),
                  child: child,
                );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: ColorsManager.white,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
