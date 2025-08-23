# Expense Tracker Lite

A modern, cross-platform expense tracking application built with Flutter. Track your expenses, manage budgets, and gain insights into your spending habits with an intuitive and beautiful user interface.

## 📱 Screenshots

![Screenshot_20250823_223428_com inovola expense_tracker_lite](https://github.com/user-attachments/assets/bb7367d2-2e72-4903-bd5f-28e5616c91ae)
![Screenshot_20250823_223424_com inovola expense_tracker_lite](https://github.com/user-attachments/assets/b5371ed6-e28f-4dc4-944c-0e030f8ddd41)

## 🏗️ Architecture and Structure

The application follows a clean architecture approach with clear separation of concerns:

```
lib/
├── core/              # Core functionality and shared code
│   ├── data/          # Data layer (repositories, data sources)
│   ├── error/         # Error handling and exceptions
│   └── network/       # Network-related code
├── modules/           # Feature modules
│   ├── bottom_bar/    # Main navigation
│   ├── expense/       # Expense management
│   └── home/          # Home screen and dashboard
└── utils/             # Utilities and helpers
    ├── helpers/       # Helper functions
    ├── resources/     # App resources (colors, strings, etc.)
    └── routing/       # Navigation and routing
```

## 🧠 State Management

The app uses the **BLoC (Business Logic Component)** pattern with the `flutter_bloc` package for state management. This provides a predictable state container that helps manage the application state in a maintainable and testable way.

Key state management features:
- Separation of business logic from UI
- Unidirectional data flow
- Easy testing of business logic
- Reactive state updates

## 🌐 API Integration

The app uses the following approach for API integration:
- **Retrofit** for type-safe API client generation
- **Dio** as the HTTP client
- **Dartz** for functional error handling
- **PrettyDioLogger** for API request/response logging in debug mode

API features include:
- Request/response interceptors
- Error handling and parsing
- Authentication token management
- Request cancellation

## 🔄 Pagination Strategy

The app implements a hybrid pagination approach:

1. **Local Caching**: 
   - Uses **Hive** for local data persistence
   - Recently viewed items are cached for offline access
   - Fast initial load from local storage

2. **API Pagination**:
   - Implements cursor-based pagination for large datasets
   - Loads more data as the user scrolls
   - Automatic refresh on pull-to-refresh

## 🛠️ Getting Started

### Prerequisites
- Flutter SDK (>=3.0.0)
- Dart SDK (>=2.17.0)
- Android Studio / Xcode (for mobile development)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/expense_tracker_lite.git
   cd expense_tracker_lite
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate code (run this after making changes to models/APIs):
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## 🚀 Features

- [ ] Expense tracking with categories
- [ ] Budget management
- [ ] Reports and analytics
- [ ] Multi-currency support
- [ ] Data export (PDF/CSV)
- [ ] Cloud sync
- [ ] Dark mode

## 🧪 Testing

The app includes unit, widget, and integration tests. To run tests:

```bash
# Run all tests
flutter test

# Run integration tests
flutter test integration_test/
```

## 📦 Dependencies

- **State Management**: `flutter_bloc`, `provider`
- **Networking**: `dio`, `retrofit`
- **Local Storage**: `hive`, `shared_preferences`
- **UI**: `flutter_screenutil`, `flutter_svg`, `lottie`
- **Utilities**: `intl`, `dartz`, `freezed`

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📝 Todo

- [ ] Add more test coverage
- [ ] Implement CI/CD pipeline
- [ ] Add more detailed documentation
- [ ] Implement user authentication
- [ ] Add more customization options

## 📬 Contact

For any questions or feedback, please open an issue on the repository.
