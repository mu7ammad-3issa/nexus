import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/widgets/custom_header.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/features/profile/ui/widgets/profile_info.dart';
import 'package:nexus/features/profile/ui/widgets/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(40.h),
              const CustomHeader(text: 'Profile'),
              verticalSpace(20.h),
              const ProfileInfo(),
              verticalSpace(39.h),
              const ProfileOptions(),
              verticalSpace(99.h),
            ],
          ),
        ),
      ),
    );
  }
}
