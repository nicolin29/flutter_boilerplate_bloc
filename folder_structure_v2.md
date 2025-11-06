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
│ │ │ │ └── auth_repository.dart
│ │ │ └── services/
│ │ │ │ └── auth_service.dart
│ │ ├── domain/
│ │ │ └── usecases/
│ │ │ │ └── login_usecase.dart
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

🧠 Analogy
Imagine:
api_client.dart = your car engine (how it drives)
api_service.dart = your driver (knows where to go)
repository.dart = your manager (decides when and why to go)

api_client.dart => Handles HTTP => get(), post(), delete()
api_endpoints.dart => Stores endpoints => /auth/login, /dashboard
api_service.dart => Defines API actions => login(), fetchDashboardData()
auth_repository.dart => Uses API service => Converts to models, applies logic
https://chatgpt.com/s/t_690cbd849a0c8191906b34c655e197ae

3 main layers
https://chatgpt.com/s/t_690cbf20eff481919cba123bc9c3f8ed
