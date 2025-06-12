import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexus/core/di/dependency_injectiond.dart';
import 'package:nexus/features/auth/forgot_password/logic/forgot_password_cubit.dart';
import 'package:nexus/features/auth/otp/logic/verify_otp_cubit.dart';
import 'package:nexus/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:nexus/features/layout/app_layout.dart';
import '../../features/auth/forgot_password/ui/forgot_password_screen.dart';
import '../../features/auth/login/logic/login_cubit.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/otp/ui/otp_screen.dart';
import '../../features/auth/reset_password/presentation/reset_password_screen.dart';
import '../../features/auth/sign_up/ui/sign_up_screen.dart';
import '../../features/burn_scan/burn_scan_screen.dart';
import '../../features/chatbot/screens/chat_screen.dart';
import '../../features/chatbot/screens/start_chat_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/home/presentation/screens/notifications_screen.dart';
import '../../features/leaderboard/leaderboard_screen.dart';
import '../../features/plans/subscription_screen.dart';
import '../../features/profile/presentation/screens/about_us_screen.dart';
import '../../features/profile/presentation/screens/contact_us_screen.dart';
import '../../features/profile/presentation/screens/edit_profile_screen.dart';
import '../../features/profile/presentation/screens/notifications_settings_screen.dart';
import '../../features/profile/presentation/screens/privacy_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/profile/presentation/screens/settings_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // this arguments to be passed to any screen like this {arguments as className}
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
        );

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ForgotPasswordCubit>(),
            child: const ForgotPasswordScreen(),
          ),
        );
      case Routes.otpScreen:
        final email = arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<VerifyOtpCubit>(),
            child: OtpScreen(email: email),
          ),
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case Routes.appLayoutScreen:
        return MaterialPageRoute(
          builder: (_) => const AppLayout(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.subscriptionScreen:
        return MaterialPageRoute(builder: (_) => const SubscriptionScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case Routes.startChatScreen:
        return MaterialPageRoute(builder: (_) => const StartChatScreen());
      case Routes.chatScreen:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.aboutUsScreen:
        return MaterialPageRoute(builder: (_) => const AboutUsScreen());
      case Routes.contactUsScreen:
        return MaterialPageRoute(builder: (_) => const ContactUsScreen());
      case Routes.burnScanScreen:
        return MaterialPageRoute(builder: (_) => const BurnScanScreen());
      case Routes.notificationsScreen:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case Routes.editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case Routes.privacyScreen:
        return MaterialPageRoute(builder: (_) => const PrivacyScreen());
      case Routes.leaderboardScreen:
        return MaterialPageRoute(builder: (_) => const LeaderboardScreen());
      case Routes.notificationsSettingsScreen:
        return MaterialPageRoute(
            builder: (_) => const NotificationsSettingsScreen());

      default:
        return null;
    }
  }
}
