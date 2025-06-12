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
import '../../features/auth/reset_password/ui/reset_password_screen.dart';
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
          settings: settings,
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignUpScreen(),
          ),
          settings: settings,
        );

      case Routes.forgotPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ForgotPasswordCubit>(),
            child: const ForgotPasswordScreen(),
          ),
          settings: settings,
        );
      case Routes.otpScreen:
        final email = arguments as String;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<VerifyOtpCubit>(),
            child: OtpScreen(email: email),
          ),
          settings: settings,
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
          settings: settings,
        );
      case Routes.appLayoutScreen:
        return MaterialPageRoute(
          builder: (_) => const AppLayout(),
          settings: settings,
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      case Routes.subscriptionScreen:
        return MaterialPageRoute(
          builder: (_) => const SubscriptionScreen(),
          settings: settings,
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
          settings: settings,
        );
      case Routes.startChatScreen:
        return MaterialPageRoute(
          builder: (_) => const StartChatScreen(),
          settings: settings,
        );
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => const ChatScreen(),
          settings: settings,
        );
      case Routes.settingsScreen:
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
          settings: settings,
        );
      case Routes.aboutUsScreen:
        return MaterialPageRoute(
          builder: (_) => const AboutUsScreen(),
          settings: settings,
        );
      case Routes.contactUsScreen:
        return MaterialPageRoute(
          builder: (_) => const ContactUsScreen(),
          settings: settings,
        );
      case Routes.burnScanScreen:
        return MaterialPageRoute(
          builder: (_) => const BurnScanScreen(),
          settings: settings,
        );
      case Routes.notificationsScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationsScreen(),
          settings: settings,
        );
      case Routes.editProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const EditProfileScreen(),
          settings: settings,
        );
      case Routes.privacyScreen:
        return MaterialPageRoute(
          builder: (_) => const PrivacyScreen(),
          settings: settings,
        );
      case Routes.leaderboardScreen:
        return MaterialPageRoute(
          builder: (_) => const LeaderboardScreen(),
          settings: settings,
        );
      case Routes.notificationsSettingsScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationsSettingsScreen(),
          settings: settings,
        );

      default:
        return null;
    }
  }
}
