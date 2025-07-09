import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class AppDecorations {
  static BoxDecoration settingsContainer = BoxDecoration(
    color: ColorsManager.violet500,
    borderRadius: BorderRadius.circular(8.r),
    boxShadow: [
      BoxShadow(
        color: const Color(0xffDADADA).withOpacity(0.08),
        blurRadius: 20,
        offset: const Offset(0, 6),
      ),
    ],
  );
}

class SettingsSwitchTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const SettingsSwitchTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        title,
        style: AppStyles.aldrichRegular16Violet100.copyWith(
          color: ColorsManager.violet50,
        ),
      ),
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
      trackOutlineColor: WidgetStatePropertyAll<Color>(
        value ? ColorsManager.green500 : ColorsManager.inActiveSwitch,
      ),
      dense: true,
      contentPadding: EdgeInsets.zero,
    );
  }
}

class NotificationsSettingsScreen extends StatefulWidget {
  const NotificationsSettingsScreen({super.key});

  @override
  State<NotificationsSettingsScreen> createState() =>
      _NotificationsSettingsScreenState();
}

class _NotificationsSettingsScreenState
    extends State<NotificationsSettingsScreen> {
  bool showNotification = true;
  bool sound = true;
  bool reactionNotification = true;
  bool showPreview = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(40.h),
              const CustomHeader(text: 'Notifications'),
              verticalSpace(40.h),
              Padding(
                padding: context.symmetric(horizontal: 24.w),
                child: Text(
                  'Notifications',
                  style: AppStyles.aldrichRegular16Violet100.copyWith(
                    color: ColorsManager.violet50,
                  ),
                ),
              ),
              verticalSpace(12),
              Padding(
                padding: context.symmetric(horizontal: 24.w),
                child: Container(
                  padding: context.symmetric(horizontal: 14.w, vertical: 21.h),
                  decoration: AppDecorations.settingsContainer,
                  child: Column(
                    children: [
                      SettingsSwitchTile(
                        title: 'Show notification',
                        value: showNotification,
                        onChanged: (value) =>
                            setState(() => showNotification = value),
                      ),
                      verticalSpace(12),
                      SettingsSwitchTile(
                        title: 'Sound',
                        value: sound,
                        onChanged: (value) => setState(() => sound = value),
                      ),
                      verticalSpace(12),
                      SettingsSwitchTile(
                        title: 'Reaction notification',
                        value: reactionNotification,
                        onChanged: (value) =>
                            setState(() => reactionNotification = value),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(32.h),
              Padding(
                padding: context.symmetric(horizontal: 24.w),
                child: Container(
                  padding: context.all(14),
                  decoration: AppDecorations.settingsContainer,
                  child: SettingsSwitchTile(
                    title: 'Show preview',
                    value: showPreview,
                    onChanged: (value) => setState(() => showPreview = value),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
