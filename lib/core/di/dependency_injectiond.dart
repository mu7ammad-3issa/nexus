import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:nexus/core/networking/api_service.dart';
import 'package:nexus/core/networking/dio_factory.dart';
import 'package:nexus/features/auth/forgot_password/data/repos/forgot_password_repo.dart';

import '../../features/auth/forgot_password/logic/forgot_password_cubit.dart';
import '../../features/auth/login/data/repos/login_repo.dart';
import '../../features/auth/login/logic/login_cubit.dart';
import '../../features/auth/otp/data/repos/verify_otp_repo.dart';
import '../../features/auth/otp/logic/verify_otp_cubit.dart';
import '../../features/auth/reset_password/data/repos/reset_password_repo.dart';
import '../../features/auth/reset_password/logic/reset_password_cubit.dart';
import '../../features/auth/sign_up/data/repos/sign_up_repo.dart';
import '../../features/auth/sign_up/logic/sign_up_cubit.dart';
import '../../features/burn_scan/data/repos/burn_scan_repo.dart';
import '../../features/burn_scan/logic/burn_scan_cubit.dart';
import '../../features/chatbot/data/repos/chatbot_repo.dart';
import '../../features/chatbot/logic/chatbot_cubit.dart';
import '../../features/leaderboard/data/repos/leaderboard_repo.dart';
import '../../features/leaderboard/logic/leaderboard_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // sign up
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  // forgot password
  getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(getIt()));
  getIt.registerLazySingleton<ForgotPasswordCubit>(
      () => ForgotPasswordCubit(getIt()));

  // verify otp
  getIt.registerLazySingleton<VerifyOtpRepo>(() => VerifyOtpRepo(getIt()));
  getIt.registerFactory<VerifyOtpCubit>(() => VerifyOtpCubit(getIt()));

  // reset password
  getIt.registerLazySingleton<ResetPasswordRepo>(
      () => ResetPasswordRepo(getIt()));
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

  // leaderboard
  getIt.registerLazySingleton<LeaderboardRepo>(() => LeaderboardRepo(getIt()));
  getIt.registerFactory<LeaderboardCubit>(() => LeaderboardCubit(getIt()));

  // burn scan
  getIt.registerLazySingleton<BurnScanRepo>(() => BurnScanRepo(getIt()));
  getIt.registerFactory<BurnScanCubit>(() => BurnScanCubit(getIt()));

  // chatbot
  getIt.registerLazySingleton<ChatbotRepo>(() => ChatbotRepo(getIt()));
  getIt.registerFactory<ChatbotCubit>(() => ChatbotCubit(getIt()));
}
