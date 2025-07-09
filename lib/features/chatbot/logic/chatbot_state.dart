import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nexus/features/chatbot/data/models/message_model.dart';

part 'chatbot_state.freezed.dart';

@freezed
class ChatbotState<T> with _$ChatbotState<T> {
  const factory ChatbotState.chatBotInitial() = _ChatBotInitial;
  const factory ChatbotState.chatBotLoading() = ChatBotLoading;
  const factory ChatbotState.chatBotSuccess(List<MessageModel> messages) =
      ChatBotSuccess;
  const factory ChatbotState.chatBotError(String message) = ChatBotError;
}
