import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/constants/size_config.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/divider.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';

class ProfileMenu extends StatelessWidget {
  final String userName;
  final String userEmail;

  const ProfileMenu({
    super.key,
    required this.userName,
    required this.userEmail,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
      width: SizeConfig.width * 0.7,
      decoration: BoxDecoration(
        color: ColorsManager.violet500,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(22.r),
          bottomRight: Radius.circular(22.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(55),
          // User info section
          Padding(
            padding: context.horizontal(26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      Assets.imagesUserDefaultImage,
                      width: 50.w,
                      height: 50.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    userName,
                    style: AppStyles.aldrichRegular14Violet50
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text(
                    userEmail,
                    style: AppStyles.aldrichRegular12Violet50.copyWith(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
              ],
            ),
          ),

          AppDivider(
            height: 50.h,
            color: Colors.white.withOpacity(0.27),
            indent: 26,
            endIndent: 26,
            thickness: 1,
          ),

          // Profile options
          _buildMenuItem('My Profile', Icons.person_outline),
          _buildMenuItem('Settings', Icons.settings_outlined),
          _buildMenuItem('My Progress', Icons.trending_up_outlined),

          AppDivider(
            height: 50.h,
            color: Colors.white.withOpacity(0.27),
            indent: 26,
            endIndent: 26,
            thickness: 1,
          ),

          // App info options
          _buildMenuItem('Terms & Conditions', Icons.description_outlined),
          _buildMenuItem('Privacy & Policy', Icons.privacy_tip_outlined),
          _buildMenuItem('FAQs', Icons.help_outline),
          _buildMenuItem('App Rating', Icons.star_border),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
      leading: Icon(
        icon,
        size: 22,
        color: Colors.white.withOpacity(0.8),
      ),
      title: Text(
        title,
        style: AppStyles.aldrichRegular16Violet100.copyWith(
          color: Colors.white,
        ),
      ),
      onTap: () {
        // Handle menu item tap
      },
    );
  }
}
