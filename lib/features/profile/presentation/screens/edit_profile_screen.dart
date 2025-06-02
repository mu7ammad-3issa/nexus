import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/app_text_button.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/profile/presentation/widgets/edit_profile_info.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(40.h),
            const CustomHeader(text: 'Edit Profile'),
            verticalSpace(40.h),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 65.r,
                  backgroundColor: ColorsManager.violet50,
                  child: Image.asset(Assets.imagesUserDefault),
                ),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: IconButton(
                    onPressed: () {
                      showProfileOptionsBottomSheet(context);
                    },
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset(
                      Assets.iconsCamera,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(40.h),
            const EditProfileInfo(
              infoTitle: 'Full Name',
              initialValue: 'Esraa Morsii',
            ),
            verticalSpace(24.h),
            const EditProfileInfo(
              infoTitle: 'Email',
              initialValue: 'esraamorsii13@gmail.com',
            ),
            const Spacer(),
            AppTextButton(
              text: 'Save',
              onPressed: () {
                // onsave logic
              },
            ),
            verticalSpace(70.h),
          ],
        ),
      ),
    );
  }
}

void showProfileOptionsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: ColorsManager.violet500,
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: context.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.camera_alt,
                color: ColorsManager.green500,
              ),
              title: Text(
                'Camera',
                style: AppStyles.aldrichRegular14Violet50,
              ),
              onTap: () async {
                // pickImage(ImageSource.camera);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.photo_library,
                color: ColorsManager.green500,
              ),
              title: Text(
                'Gallery',
                style: AppStyles.aldrichRegular14Violet50,
              ),
              onTap: () async {
                // pickImage(ImageSource.gallery);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.delete,
                color: ColorsManager.deletionColor,
              ),
              title: Text(
                'Delete photo',
                style: AppStyles.aldrichRegular14Violet50,
              ),
              onTap: () {
                // setState(() {
                //   _selectedImage = null;
                // });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
