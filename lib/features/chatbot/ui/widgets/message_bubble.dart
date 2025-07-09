import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/features/chatbot/data/models/message_model.dart';
import 'package:nexus/features/chatbot/ui/widgets/typing_indicator.dart';

class MessageBubble extends StatelessWidget {
  final MessageModel message;
  final VoidCallback? onTap;

  const MessageBubble({
    super.key,
    required this.message,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isUser = message.sender == MessageSender.user;
    final bool isSuggestion = onTap != null;

    final alignment = isUser ? Alignment.centerRight : Alignment.centerLeft;

    final borderRadius = isUser
        ? BorderRadius.only(
            topLeft: Radius.circular(8.r),
            topRight: Radius.circular(8.r),
            bottomLeft: Radius.circular(8.r),
          )
        : BorderRadius.only(
            topLeft: Radius.circular(8.r),
            topRight: Radius.circular(8.r),
            bottomRight: Radius.circular(8.r),
          );

    return Align(
      alignment: isSuggestion ? Alignment.center : alignment,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: context.only(bottom: 16.h),
          padding: context.symmetric(
            vertical: 14.5.h,
            horizontal: 13.5.w,
          ),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Assets.imagesMessageBackground),
              fit: BoxFit.cover,
            ),
            borderRadius:
                isSuggestion ? BorderRadius.circular(8.r) : borderRadius,
          ),
          child: message.isLoading
              ? const TypingIndicator()
              :
              // Use MarkdownBody to render formatted text
              MarkdownBody(
                  data: message.text,
                  selectable: true,
                  styleSheet: MarkdownStyleSheet(
                    // Style the paragraph text to match your app's theme
                    p: AppStyles.aldrichRegular16Violet100.copyWith(
                      color: Colors.white,
                    ),
                    // Style the bullet points
                    listBullet: AppStyles.aldrichRegular16Violet100.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    // Style bold text (e.g., **Stay Calm**)
                    strong: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    // Ensure all other text elements are white
                    h1: const TextStyle(color: Colors.white),
                    h2: const TextStyle(color: Colors.white),
                    h3: const TextStyle(color: Colors.white),
                    h4: const TextStyle(color: Colors.white),
                    h5: const TextStyle(color: Colors.white),
                    h6: const TextStyle(color: Colors.white),
                    em: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
        ),
      ),
    );
  }
}
