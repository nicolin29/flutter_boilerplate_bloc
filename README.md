# Flutter Boilerplate Bloc

A **medium-scale Flutter boilerplate** for freelance or production apps, built with:

- **Bloc** for state management
- **MVVM architecture**
- **Dependency Injection (GetIt)**
- **Dio** for API requests
- **Environment configuration** with `.env` and Dart-defined environment
- **Theme & shared widgets**

---

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/flutter_boilerplate_bloc.git
cd flutter_boilerplate_bloc
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Configure environment

# Flutter Boilerplate (Bloc)

![version](https://img.shields.io/badge/version-1.0.0-blue)
![license](https://img.shields.io/badge/license-MIT-green)

A medium-scale Flutter boilerplate intended for production-ready apps and freelance projects. It focuses on providing a pragmatic structure and common integrations so you can start building features quickly.

Key technologies included

- flutter_bloc (state management)
- MVVM-friendly structure
- get_it (dependency injection)
- dio + pretty_dio_logger (API client)
- go_router (routing)
- flutter_dotenv (environment config)
- freezed + json_serializable (immutable models & codegen)

## Why this project is useful

- Ready-made architecture and folders for medium-sized apps
- Batteries included integrations for networking, DI, routing and state
- Example wiring for environment variables and dependency injection
- Minimal opinionated UI so you can adapt design systems quickly

## Quick contract

- Inputs: Flutter project files inside this repository; `.env` for runtime configuration
- Outputs: A working Flutter app you can run on simulator/device
- Error modes: missing `.env`, incompatible Flutter/Dart SDK versions, or missing codegen outputs
- Success: `flutter run` launches the app; build commands create platform artifacts

## Prerequisites

- Flutter (stable channel) and a compatible Dart SDK (see `pubspec.yaml` -> sdk: ^3.9.2)
- Platform toolchains for Android / iOS if you plan to build (Android Studio, Xcode)

## Get started (fast)

1. Clone the repo:

```zsh
git clone https://github.com/nicolin29/flutter_boilerplate_bloc.git
cd flutter_boilerplate_bloc
```

2. Create your environment file from the template:

```zsh
cp .env.sample .env
# Edit `.env` to set API endpoints, keys, etc.
```

3. Install Dart/Flutter packages:

```zsh
flutter pub get
```

4. (Optional) Run code generation used by `freezed` / `json_serializable`:

```zsh
flutter pub run build_runner build --delete-conflicting-outputs
```

5. Run the app (dev):

```zsh
make run-dev
# or
flutter run
```

## Common tasks

- Build Android APK (dev/prod): `make build-apk-dev`, `make build-apk-prod`
- Build iOS (requires Xcode): `make build-ios-dev`, `make build-ios-prod`
- Clean: `make clean`

If your environment doesn't provide the `make` targets, use standard Flutter commands such as `flutter run`, `flutter build apk` or `flutter build ios`.

## Project layout (high level)

- `lib/` — app entry & source
  - `lib/main.dart` — app bootstrap (loads `.env`, initializes DI)
  - `lib/src/` — primary app code (app.dart, features, core, shared)
- `android/`, `ios/`, `macos/`, `linux/`, `windows/`, `web/` — platform folders
- `test/` — widget/unit tests (starter)
- `doc/`, `flow_structure.md`, `folder_structure_v2.md` — design & structure docs

## Features / integrations

- State management: `flutter_bloc`
- Dependency injection: `get_it`
- Networking: `dio` with `pretty_dio_logger`
- Routing: `go_router`
- Environment: `flutter_dotenv` (the app loads `.env` in `lib/main.dart`)
- Codegen: `freezed`, `json_serializable`, and `build_runner`

## Contributing & support

If you need help or want to contribute:

- Open an issue for bugs or feature requests: use GitHub Issues
- Send a pull request and follow the repository's branching/PR conventions
- See `doc/` for architecture notes and `flow_structure.md` for typical flows

For small contributions, follow these steps locally:

```zsh
git checkout -b feature/your-feature
# make changes, run tests and codegen if needed
git commit -am "Describe your change"
git push origin feature/your-feature
# Open a PR against `main`
```

## Maintainers

- Nicodemus Lin — https://github.com/nicolin29

## License

This project is licensed under the MIT License — see `LICENSE` for details.
