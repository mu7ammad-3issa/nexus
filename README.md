# Nexus - VR Emergency Response Companion

**Version:** 1.0.0+1

Nexus is a Flutter-based companion mobile app for a VR emergency response simulator, designed to provide users with a platform to train, prepare, and stay safe during emergencies.

## 🎥 Demo



https://github.com/user-attachments/assets/990ab423-5d43-4db3-b680-8e5cd0a1a011



-----

## 🎨 System Design

The project follows a feature-first architecture, with a clear separation of concerns between core functionalities and feature-specific modules.

```plaintext
lib/
├── core/                  # Core modules and shared utilities
│   ├── di/                # Dependency injection configuration (get_it)
│   ├── helpers/           # Common utility classes and functions (constants, extensions, shared_pref_helper, spacing)
│   ├── networking/        # HTTP client setup (Dio + Retrofit)
│   ├── routing/           # Navigation and route management
│   ├── theming/           # App-wide theme and style definitions (colors, font_weight_helper, styles)
│   └── widgets/           # Shared reusable widgets (app_text_button, app_text_form_field)
│
├── features/              # Feature-specific modules
│   └── feature_name/      # Individual feature module (e.g., login, home, profile)
│       ├── data/          # Data layer for handling business logic
│       │   ├── models/    # Data models specific to the feature
│       │   └── repos/     # Repositories for data operations
│       │
│       ├── logic/         # Business logic and state management
│       │   ├── cubit/     # Cubit for state management
│       │   └── states/    # State definitions for the cubit
│       │
│       └── ui/            # Presentation layer
│           ├── widgets/   # Feature-specific reusable widgets
│           └── screens/   # Screen implementations for the feature
│
└── main.dart              # Main entry point for the application
```

-----

## ✨ Features

  * **Authentication:** Secure sign-up, sign-in, and password reset.
  * **VR Training Integration:** Seamless connection with a VR emergency response simulator.
  * **Burn Scan & Analysis:** Classifies burn images and provides treatment recommendations.
  * **AI Chatbot "Nexi":** An intelligent chatbot for safety and emergency questions.
  * **Leaderboard:** Tracks and ranks user progress.
  * **Subscription Plans:** Offers Basic and Premium subscription tiers.
  * **User Profile Management:** View and edit profiles, track training progress, and manage certificates.
  * **Resource Center:** Provides safety articles and videos.
  * **Notifications:** Keeps users informed with relevant alerts.

-----

## 🚀 Getting Started

### Prerequisites

  * Flutter SDK: Version 3.19.0 or higher
  * Dart: Version 3.3.0 or higher

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/mu7ammad-3issa/nexus.git
    cd nexus
    ```
2.  **Install Flutter dependencies:**
    ```bash
    flutter pub get
    ```

### Running the App

```bash
flutter run
```

-----

## 🛠️ Built With

  * **Flutter** - UI toolkit for building natively compiled applications.
  * **Dart** - Programming language used by Flutter.
  * **flutter\_bloc/Cubit** - State management solution.
  * **get\_it** - Service locator for dependency injection.
  * **dio** - HTTP client for Dart.
  * **retrofit** - Type-safe HTTP client generator for Dio.
  * **freezed** - Code generator for immutable classes.
  * **json\_serializable** - For automatic JSON serialization/deserialization.
  * **flutter\_secure\_storage** - For secure data storage.
  * **shared\_preferences** - For simple key-value data storage.
  * **flutter\_screenutil** - For adapting screen and font size.
  * **lottie** - For rendering Lottie animations.

-----

## ⚙️ Project Structure Highlights

  * **Core:** Contains shared modules for:
      * Dependency Injection (`get_it`)
      * Networking (Dio, Retrofit, API constants, error handling)
      * Routing (`AppRouter`, named routes)
      * Helpers (Validators, Constants, Extensions, Shared Preferences)
      * Theming (Colors, Fonts, Styles)
      * Shared Widgets
  * **Features:** Each feature (e.g., Auth, Home, Profile, Chatbot) is modularized with its own data, logic (Cubit), and UI layers.
  * **Splash Screen:** Configured via `flutter_native_splash.yaml`.

-----

## 🔧 Linting

The project uses `flutter_lints` for static analysis to encourage good coding practices. Custom lint rules are configured in `analysis_options.yaml`.

-----

## 🧪 Testing

A basic widget test example is provided in `test/widget_test.dart`.

-----

## 🤝 Contributing

Contributions are welcome\! Please follow the existing code style and structure.
