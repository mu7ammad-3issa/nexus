import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nexus/core/constants/assets.dart';
import 'package:nexus/core/helpers/base_extensions/context/padding.dart';
import 'package:nexus/core/widgets/app_text_form_field.dart';
import 'package:nexus/core/helpers/helper_methods/spacing.dart';
import 'package:nexus/core/theming/app_styles.dart';
import 'package:nexus/core/theming/colors_manager.dart';
import 'package:nexus/features/chatbot/data/models/message_model.dart';
import 'package:nexus/features/chatbot/logic/chatbot_cubit.dart';
import 'package:nexus/features/chatbot/logic/chatbot_state.dart';

import '../widgets/chat_header.dart';
import '../widgets/message_bubble.dart';
import '../widgets/typing_indicator.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<String> _suggestions = [
    "How do I start a VR training session?",
    "How can I control a car if the brakes fail?",
    "How do I get the latest updates about VR training?",
  ];

  bool _showSuggestions = true;

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _messageController.text;
    if (text.trim().isNotEmpty) {
      context.read<ChatbotCubit>().sendMessage(text);
      _messageController.clear();
      if (_showSuggestions) {
        setState(() {
          _showSuggestions = false;
        });
      }
    }
  }

  void _handleSuggestionTap(String message) {
    context.read<ChatbotCubit>().sendMessage(message);
    setState(() {
      _showSuggestions = false;
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            verticalSpace(20.h),
            const ChatHeader(text: 'Nexi AI'),
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
                    image: AssetImage(Assets.imagesChatContainerBackground),
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
                      child: BlocBuilder<ChatbotCubit, ChatbotState>(
                        builder: (context, state) {
                          _scrollToBottom();
                          return ListView(
                            controller: _scrollController,
                            children: [
                              if (_showSuggestions)
                                ..._suggestions
                                    .map((suggestion) => MessageBubble(
                                          message: MessageModel(
                                              text: suggestion,
                                              sender: MessageSender.bot),
                                          onTap: () =>
                                              _handleSuggestionTap(suggestion),
                                        )),
                              // Conditionally render MessageBubble or TypingIndicator
                              ...context.watch<ChatbotCubit>().messages.map(
                                (msg) {
                                  if (msg.isLoading) {
                                    return const TypingIndicator();
                                  } else {
                                    return MessageBubble(message: msg);
                                  }
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    AppTextFormField(
                      controller: _messageController,
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
                        onPressed: _sendMessage,
                        icon: const Icon(
                          Icons.send,
                          color: ColorsManager.green500,
                        ),
                      ),
                      onFieldSubmitted: (_) => _sendMessage(),
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
