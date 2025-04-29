import 'package:flutter/material.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class SwitchWidget extends StatelessWidget {
  final bool value;
  final void Function(bool) onChanged;
  const SwitchWidget({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      thumbIcon: WidgetStateProperty.all(
        const Icon(
          Icons.circle,
          size: 35,
          color: ColorsManager.violet500,
        ),
      ),
      activeColor: ColorsManager.violet500,
      activeTrackColor: ColorsManager.green500,
      inactiveThumbColor: ColorsManager.violet500,
      inactiveTrackColor: ColorsManager.inActiveSwitch,
    );
  }
}
