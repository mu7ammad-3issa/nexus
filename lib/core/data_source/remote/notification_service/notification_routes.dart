

import '../../../constants/app_constants.dart';

abstract interface class NotificationNavigation {
  void navigate();
}

// Implementations
class HomeNavigation implements NotificationNavigation {
  const HomeNavigation();
  @override
  void navigate() {}
}

class ExercisesNavigation implements NotificationNavigation {
  const ExercisesNavigation();
  @override
  void navigate() {
    // Constants.navigatorKey.currentState?.pushNamed('/exercises');
  }
}

class PlansNavigation implements NotificationNavigation {
  const PlansNavigation();
  @override
  void navigate() {
    // Constants.navigatorKey.currentState?.pushNamed('/plans');
  }
}