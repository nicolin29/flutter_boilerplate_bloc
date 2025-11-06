lib/
├── main.dart # App entry point
├── app.dart # App-wide config: theme, routes
│
├── core/ # Core utilities and configurations
│ ├── config/
│ │ └── app_config.dart
│ ├── di/
│ │ └── injection.dart
│ ├── constants/
│ │ └── app_constants.dart # Example: API URLs, app-wide constants
│ ├── utils/
│ │ └── date_utils.dart # Example: helper functions for dates
│ ├── errors/
│ │ └── app_exceptions.dart # Custom exceptions
│ ├── network/
│ │ ├── api_client.dart # HTTP client
│ │ └── api_endpoints.dart # API endpoints
│ ├── theme/
│ │ ├── app_colors.dart
│ │ └── app_theme.dart
│
├── features/ # Feature-based modules
│ ├── auth/
│ │ ├── data/
│ │ │ ├── models/
│ │ │ │ └── user_model.dart
│ │ │ └── repositories/
│ │ │ └── auth_repository.dart
│ │ ├── domain/
│ │ │ └── usecases/
│ │ │ └── login_usecase.dart
│ │ └── presentation/
│ │ ├── pages/
│ │ │ └── login_page.dart
│ │ └── widgets/
│ │ └── login_form.dart
│ │
│ └── dashboard/
│ ├── data/
│ │ ├── models/dashboard_model.dart
│ │ └── repositories/dashboard_repository.dart
│ ├── domain/
│ │ └── usecases/get_dashboard_data.dart
│ └── presentation/
│ ├── pages/dashboard_page.dart
│ └── widgets/dashboard_card.dart
│
├── shared/ # Reusable widgets/components
│ ├── widgets/
│ │ ├── custom_button.dart
│ │ └── custom_text_field.dart
│ ├── dialogs/
│ │ └── confirmation_dialog.dart
│ └── extensions/
│ └── string_extensions.dart
│
└── routes/
└── app_routes.dart # Centralized route definitions
