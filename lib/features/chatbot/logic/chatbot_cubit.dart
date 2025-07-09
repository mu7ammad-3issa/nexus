import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/features/chatbot/data/models/chat_request_body.dart'
    as gemini_req;
import 'package:nexus/features/chatbot/data/models/message_model.dart';
import 'package:nexus/features/chatbot/data/repos/chatbot_repo.dart';
import 'package:nexus/features/chatbot/logic/chatbot_state.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  final ChatbotRepo _chatbotRepo;
  List<MessageModel> messages = [];
  List<gemini_req.Content> history = [];

  ChatbotCubit(this._chatbotRepo) : super(const ChatbotState.chatBotInitial());

  void sendMessage(String text) async {
    if (text.isEmpty) return;

    // Add user message to UI list
    messages.add(MessageModel(text: text, sender: MessageSender.user));
    // Add loading indicator for bot's response
    messages.add(
        MessageModel(text: '', sender: MessageSender.bot, isLoading: true));
    emit(ChatbotState.chatBotSuccess(List.from(messages)));

    // Add user message to Gemini history
    history.add(
        gemini_req.Content(role: "user", parts: [gemini_req.Part(text: text)]));

    // Create the request for the Gemini API
    final request = gemini_req.ChatRequestBody(contents: history);

    final response = await _chatbotRepo.generateContent(request);

    // Remove the loading indicator
    messages.removeLast();

    response.when(
      success: (geminiResponse) {
        final botText =
            geminiResponse.candidates?.first.content?.parts?.first.text ??
                "Sorry, I couldn't process that.";
        messages.add(MessageModel(text: botText, sender: MessageSender.bot));
        history.add(gemini_req.Content(
            role: "model", parts: [gemini_req.Part(text: botText)]));
        emit(ChatbotState.chatBotSuccess(List.from(messages)));
      },
      failure: (error) {
        messages.add(
            MessageModel(text: "Error: $error", sender: MessageSender.bot));
        emit(ChatbotState.chatBotSuccess(List.from(messages)));
      },
    );
  }
}
