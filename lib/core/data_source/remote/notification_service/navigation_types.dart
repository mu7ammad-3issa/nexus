import 'notification_routes.dart';

enum NavigationType {
  home(0, HomeNavigation()),
  exercises(1, ExercisesNavigation()),
  plans(2, PlansNavigation());

  final int id;
  final NotificationNavigation notificationNavigation;

  // Constant constructor
  const NavigationType(this.id, this.notificationNavigation);
}
