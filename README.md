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

1. Copy .env.sample to .env:

```bash
cp .env.sample .env
```

Note: .env is ignored by Git. Only .env.sample is committed as a template.

## Running the App

#### Development

```bash
make run-dev
```

#### Production

```bash
make run-prod
```

#### Build APK

```bash
make build-apk-dev
make build-apk-prod
```

#### Production

```bash
make build-ios-dev
make build-ios-prod
```

#### Clean Project

```bash
make clean
```

## Contribution

Contributions are welcome! Feel free to fork this boilerplate and adapt it for your projects.

To contribute:

1. **Fork** the repository.
2. **Create a branch** for your feature or fix:

```bash
git checkout -b feature/my-feature
```

3. **Commit your changes** with a clear message:

```bash
git commit -m "Add some feature"
```

4. **Push** your branch to your fork:

```bash
git push origin feature/my-feature
```

5. **Open a Pull Request** on the original repository.
   Please make sure your code follows the project’s style and passes any existing tests.

## License

MIT License © Nicodemus Lin
