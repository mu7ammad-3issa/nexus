import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/helpers/helper_methods/show_dialog.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/profile/presentation/screens/edit_profile_screen.dart';
import 'package:nexus/features/profile/presentation/screens/settings_screen.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCustomContainer(
          child: _buildListTile(
            icon: Assets.iconsUser,
            title: 'Edit Profile',
            trailingArrow: true,
            onTap: () {
              context.navigate(const EditProfileScreen());
            },
          ),
        ),
        verticalSpace(22.h),
        // Achievements
        Padding(
          padding: context.horizontal(24.w),
          child: Text(
            'Achievements',
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
        ),
        verticalSpace(13),
        _buildCustomContainer(
          child: Column(
            children: [
              _buildListTile(
                icon: Assets.iconsFire,
                title: 'Fire Safety Expert',
                trailingArrow: false,
                onTap: () {},
              ),
              _buildListTile(
                icon: Assets.iconsCar,
                title: 'Car Emergency Responder',
                trailingArrow: false,
                onTap: () {},
              ),
            ],
          ),
        ),
        verticalSpace(21.h),

        // Training History
        Padding(
          padding: context.horizontal(24.w),
          child: Text(
            'Training History',
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
        ),
        verticalSpace(13),

        _buildCustomContainer(
          child: Column(
            children: [
              _buildListTile(
                icon: Assets.iconsHomeInlined,
                title: 'Home Fire Drill - Completed',
                trailingArrow: false,
                onTap: () {},
              ),
              _buildListTile(
                icon: Assets.iconsFactory,
                title: 'Factory Safety - In Progress',
                trailingArrow: false,
                onTap: () {},
              ),
            ],
          ),
        ),
        verticalSpace(21.h),
        // Certificates
        Padding(
          padding: context.horizontal(24.w),
          child: Text(
            'Certificate',
            style: AppStyles.aldrichRegular16Violet100.copyWith(
              color: ColorsManager.violet50,
            ),
          ),
        ),
        verticalSpace(13),
        _buildCustomContainer(
          child: Column(
            children: [
              _buildListTile(
                icon: Assets.iconsEllipse,
                title: 'Fire Safety Training',
                trailingArrow: false,
                onTap: () {},
              ),
              _buildCertificateListTile(
                onPreviewTap: () {},
                onDownloadTap: () {},
              ),
              _buildListTile(
                icon: Assets.iconsEllipse,
                title: 'Industrial Safety Training',
                trailingArrow: false,
                onTap: () {},
              ),
              _buildCertificateListTile(
                onPreviewTap: () {},
                onDownloadTap: () {},
              ),
            ],
          ),
        ),
        verticalSpace(20.h),

        // Settings
        _buildCustomContainer(
          child: _buildListTile(
            icon: Assets.iconsSettings,
            title: 'Settings',
            trailingArrow: true,
            onTap: () {
              context.navigate(
                const SettingsScreen(),
              );
            },
          ),
        ),
        verticalSpace(20.h),
        // Logout
        _buildCustomContainer(
          child: _buildListTile(
            icon: Assets.iconsLogout,
            title: 'Logout',
            trailingArrow: true,
            onTap: () {
              confirmLogoutDialog(context);
            },
          ),
        ),
      ],
    );
  }
}

Widget _buildListTile({
  required String icon,
  required String title,
  required VoidCallback onTap,
  required bool trailingArrow,
}) {
  return ListTile(
    contentPadding: EdgeInsets.only(
      left: 8.w,
      right: 25.w,
    ),
    minVerticalPadding: 0,
    minLeadingWidth: 0,
    horizontalTitleGap: 28.w,
    dense: true,
    leading: SvgPicture.asset(
      icon,
    ),
    title: Text(
      title,
      style: AppStyles.aldrichRegular14Violet50,
    ),
    trailing: trailingArrow
        ? const Icon(
            Icons.arrow_forward_ios,
            color: ColorsManager.violet50,
            size: 20,
          )
        : null,
    onTap: onTap,
  );
}

Widget _buildCertificateListTile({
  required VoidCallback onPreviewTap,
  required VoidCallback onDownloadTap,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 6.w),
    child: Row(
      children: [
        SvgPicture.asset(
          Assets.iconsCertificate,
        ),
        horizontalSpace(21.w),
        TextButton(
          onPressed: onPreviewTap,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'Certificate Preview',
            style: AppStyles.aldrichRegular12Violet50.copyWith(
              color: ColorsManager.green500,
            ),
          ),
        ),
        horizontalSpace(26.w),
        TextButton(
          onPressed: onPreviewTap,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'Download',
            style: AppStyles.aldrichRegular12Violet50.copyWith(
              color: ColorsManager.green500,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildCustomContainer({required Widget child}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: (24.w),
    ),
    child: Container(
      padding: EdgeInsets.symmetric(
        vertical: (8.h),
        horizontal: (8.w),
      ),
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9).withOpacity(0.07),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: child,
    ),
  );
}
