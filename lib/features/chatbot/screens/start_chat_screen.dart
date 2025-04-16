import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/app_constants.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/routes.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_button.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/features/chatbot/screens/chat_screen.dart';

class StartChatScreen extends StatelessWidget {
  const StartChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(40.h),
              Text(
                'Nexi Ai',
                style: AppStyles.aldrichRegular20Violet50,
              ),
              verticalSpace(122.h),
              SvgPicture.asset(
                Assets.imagesLogoWithoutName,
              ),
              verticalSpace(46.h),
              Text(
                'Welcome to',
                style: AppStyles.aldrichRegular24white,
              ),
              verticalSpace(8),
              Text(
                'Nexi AI',
                style: AppStyles.aldrichRegular24white.copyWith(
                  color: Constants.appColor,
                ),
              ),
              verticalSpace(69.h),
              Text(
                'Ask me anything about safety and emergencies',
                style: AppStyles.aldrichRegular14Violet50,
              ),
              verticalSpace(70.h),
              AppTextButton(
                text: 'Start Chat',
                onPressed: () {
                  context.navigate(
                    ChatScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
