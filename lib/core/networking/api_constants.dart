class ApiConstants {
  static const String baseUrl = 'http://nexus-apis.runasp.net/api/';
  static const String burnClassificationUrl =
      'https://skinburn-api.onrender.com/predictApi';
  static const String chatBotUrl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key={apiKey}';
  static const String loginEndpoint = 'Auth/signin';
  static const String signupEndpoint = 'Auth/signup';
  static const String forgotPasswordEndpoint = 'Auth/forgot-password';
  static const String verifyOtpEndpoint = 'Auth/verify-otp';
  static const String resetPasswordEndpoint = 'Auth/reset-password';
  static const String leaderboardEndpoint = 'Leaderboard/top';
  static const String plansEndpoint = 'Plans';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
