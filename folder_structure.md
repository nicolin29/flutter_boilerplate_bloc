lib/
├── main.dart
├── app.dart # App entry point, DI setup, theme setup
├── config/
│ ├── app_config.dart # App constants, API base URL
│ ├── theme.dart # ThemeData, colors, fonts
│ └── env.dart # .env loading
├── core/
│ ├── di/  
│ │ └── injector.dart # Dependency Injection setup
│ ├── models/  
│ │ └── user_model.dart  
│ ├── utils/
│ │ ├── validators.dart
│ │ └── helpers.dart
│ ├── services/
│ │ └── api_service.dart # API request logic
│ └── constants.dart # Global constants
├── features/
│ └── auth/
│ ├── data/
│ │ ├── auth_repository.dart
│ │ └── auth_api.dart
│ ├── domain/
│ │ └── user_entity.dart
│ ├── presentation/
│ │ ├── bloc/
│ │ │ └── auth_bloc.dart
│ │ └── pages/
│ │ └── login_page.dart
│ └── utils/
│ └── validators.dart
├── shared/
│ ├── widgets/
│ │ ├── button.dart
│ │ └── input_field.dart
│ ├── extensions/
│ │ └── string_extensions.dart
│ └── theme/
│ ├── app_colors.dart
│ └── app_text_styles.dart
