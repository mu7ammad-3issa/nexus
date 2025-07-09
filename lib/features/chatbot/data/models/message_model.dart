enum MessageSender { user, bot }

class MessageModel {
  final String text;
  final MessageSender sender;
  final bool isLoading; // To show a typing indicator for the bot

  MessageModel({
    required this.text,
    required this.sender,
    this.isLoading = false,
  });
}
