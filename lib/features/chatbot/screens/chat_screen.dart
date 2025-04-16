import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/helpers/base_widgets/app_text_form_field.dart';
import 'package:nexus/core/helpers/base_widgets/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/chatbot/widgets/chat_header.dart';
import 'package:nexus/features/chatbot/widgets/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> suggestions = [
    "How do I start a VR training session?",
    "How can I control a car if the brakes fail?",
    "How do I get the latest updates about VR training?",
    "How do I start a VR training session?",
  ];
  final List<String> userMessages = [];
  final List<String> botResponses = [];

  void _handleSuggestionTap(String message) {
    setState(() {
      suggestions.clear();
      userMessages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(20.h),
            const ChatHeader(
              text: 'Nexi ai',
            ),
            verticalSpace(26.h),
            SvgPicture.asset(
              Assets.imagesLogoWithoutName,
              width: 54,
              height: 33,
            ),
            verticalSpace(32.h),
            Expanded(
              child: Container(
                padding: context.only(
                  left: 24.w,
                  right: 24.w,
                  top: 40.h,
                  bottom: 27.h,
                ),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      Assets.imagesChatContainerBackground,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22.r),
                    topRight: Radius.circular(22.r),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          ...suggestions.map((message) => GestureDetector(
                                onTap: () => _handleSuggestionTap(message),
                                child:
                                    SuggestionMessageBubble(message: message),
                              )),
                          ...userMessages.map(
                              (message) => MessageBubble(message: message)),
                          ...botResponses.map((message) =>
                              MessageBubbleForBot(message: message)),
                        ],
                      ),
                    ),
                    AppTextFormField(
                      contentPadding: context.symmetric(
                        vertical: 20.h,
                        horizontal: 16.w,
                      ),
                      hintText: "Ask me anything",
                      hintStyle: AppStyles.aldrichRegular12Violet50.copyWith(
                        color: ColorsManager.violet200,
                      ),
                      backgroundColor: Colors.transparent,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                          color: ColorsManager.green500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
