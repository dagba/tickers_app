# Architecture Design Document

## Overview

This document outlines the architecture design of the Flutter application built to display a list of trading instruments with real-time price updates. The application is designed with a clean architecture approach, leveraging the BLoC pattern for state management, WebSocket for real-time data updates, and a modular structure to ensure future-proofing and extensibility.

## Features

- Tickers list screen
- Ticker price change animation.
- Tickers list pagination.
- Connectivity listener and websocket connection resoration.
- Backoff Full Jitter strategy grown exponentially depends on number of retry attempt
- Show connectivity status

## Goals and Requirements

- **Real-Time Data Handling**: Display a list of trading instruments with real-time price updates.
- **Pagination Support**: Load instruments in a paginated fashion to handle large datasets efficiently.
- **Connectivity Handling**: Monitor internet connectivity and manage WebSocket connection restoration.
- **Retry Strategy**: Implement an exponential backoff with Full Jitter strategy for retrying WebSocket connections.

## Design

To avoid reinventing the wheel and minimize potential UI/UX issues, I used the CoinMarketCap app as a reference.

## Used technologies

- Flutter SDK management: **FVM**
- Routing: **auto_router**
  - Very popular library to handle navigation in Flutter
  - a lot of contributers, test coverage, good [feedback](https://github.com/flutter/uxr/tree/master/nav2-usability/comparative-analysis) from google engineers
- DI: **get_it**, **injectable**
  - provides declarative dependency registration
  - **injectable** verifies DI registration correctness on code generation step, ensure we dont get DI error during runtime
  - supports flavors
- State management: **BLoC**
  - Popular and useful state management library
  - Easy to onboard new teammates
  - Good documentation
  - Has test tooling **bloc_test**
- Websockets: **ws**
  - It allows you to connect to a WebSocket server, send and receive messages, and handle the connection state changes
  - Backoff full jitter strategy for reconnection attempts
  - 90% test coverage
- Connectivity: **connectivity_plus**
- Localizations: **flutter_localizations**
- Unit tests: **mocktail**, **bloc_test**, **flutter_test**
- Secrets: dart-define-from-file
  - used default dart tooling to inject secrets from env file, will be useful in CI/CD and wont be exposed to public repository
- Linter: **flutter_lints** with strict code style rules, that will ensure code quality in large teams

## Folder structure

```
lib/
├── app/
│   ├── domain/
│   ├── presentation/
├── common/
│   ├── constants/
│   ├── data/
│   │   ├── datasource/
│   ├── presentation/
├── core/
│   ├── services/
│   ├── logger/
│   ├── utils/
├── di/
├── features/
│   ├── crypto/
│   │   ├── data/
│   │   │   ├── data_source/
│   │   │   ├── dto/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── models/
│   │   │   ├── repositories/
│   │   │   └── interactors/
│   │   ├── presentation/
│   │   │   ├── bloc/
│   │   │   └── widgets/
│   ├── dashboard/
│   │   ├── data/
│   │   │   ├── data_source/
│   │   │   ├── dto/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── models/
│   │   │   ├── repositories/
│   │   │   ├── interactors/
│   │   ├── presentation/
│   │   │   ├── bloc/
│   │   │   └── widgets/
├── localization/
├── navigation/
└── main_dev.dart
ui_kit/
├── lib/
│   ├── app_colors.dart
│   ├── app_theme.dart
│   ├── widgets/
```

## Architecture Overview

The application is structured using **Clean Architecture** principles, promoting a separation of concerns by dividing the codebase into three main layers:

1. **Presentation Layer**: Contains the UI code and BLoC components for state management.
2. **Domain Layer**: Contains business logic and use cases.
3. **Data Layer**: Responsible for data fetching, WebSocket management, and local data caching.

### 1. Presentation Layer

The **Presentation Layer** is responsible for displaying the UI and managing user interactions. It consists of the following components:

- **UI Widgets**: Stateless and Stateful Widgets that represent the UI.
- **BLoC (Business Logic Component)**: Manages state and business logic using events and states. BLoC components handle the following:
  - Loading and refreshing trading instruments.
  - Pagination and loading more instruments when scrolling.
  - Searching trading instruments by symbol.
  - Animating price changes when a new price is received.
- **Event and State Management**: Using \`freezed\` for immutable event and state classes, ensuring type safety and immutability.

#### Key Design Decisions:

- **BLoC Pattern**: Provides a clear separation between UI and business logic, making the codebase more testable and maintainable.
- **Freezed Package**: Used to generate immutable classes for events and states, reducing boilerplate code and improving type safety.

### 2. Domain Layer

The **Domain Layer** contains the core business logic and rules of the application. It includes:

- **Entities**: Plain Dart classes that represent the core business objects (e.g., \`CryptoSymbol\`).
- **Interactors**: Encapsulate the application’s specific business logic. Each use case is responsible for a specific action (e.g., fetching trading instruments, searching instruments).

#### Key Design Decisions:

- **Use Case Abstraction**: Each use case follows the Command pattern, allowing easy addition or modification of business logic without impacting other parts of the codebase.
- **Dependency Injection**: Uses a dependency injection pattern (via constructor injection) to ensure that use cases are decoupled from their implementations, improving testability.

### 3. Data Layer

The **Data Layer** is responsible for fetching data from remote APIs (via WebSocket) and handling local data storage if needed. It includes:

- **Repositories**: Abstract classes defining the contract for data operations. These repositories are used by the domain layer.
- **Data Sources**: Concrete implementations for data fetching. It includes:
  - **Remote Data Source**: Manages WebSocket connections and API requests.
  - **Connectivity Service**: Monitors network connectivity using \`connectivity_plus\` and manages WebSocket reconnections.
  - **Exponential Backoff Strategy**: Implements a Full Jitter strategy for reconnecting WebSocket connections based on retry attempts.

#### Key Design Decisions:

- **Repository Pattern**: Abstracts data access and provides a clean API for the domain layer, allowing easy swapping of data sources if needed.
- **WebSocket Management**: Handles real-time updates and reconnections efficiently using WebSocket protocols.
- **Connectivity Listener**: Ensures the app gracefully handles network disruptions and attempts to restore WebSocket connections automatically.
- **Backoff Full Jitter Strategy**: Exponential backoff with Full Jitter minimizes congestion and improves the efficiency of reconnection attempts.

## Future-Proofing and Extensibility

To ensure the application is future-proof and extensible, the following considerations were made:

1. **Modular Structure**: The app is divided into clear modules (features) that encapsulate functionality, making it easier to add or modify features.
2. **Clean Architecture Principles**: Promotes separation of concerns, making the codebase easier to understand, test, and maintain.
3. **State Management with BLoC**: Allows easy testing and debugging of business logic and state changes.
4. **Scalable and Maintainable Code**: By abstracting core functionalities using repositories and use cases, we allow easy adaptation to new requirements, such as integrating new APIs or changing data providers.
5. **Customizable Backoff Strategy**: The exponential backoff with Full Jitter strategy can be fine-tuned for different network conditions, providing flexibility in connection management.
6. **Testability**: Each layer is highly testable due to dependency injection, use case separation, and clear repository boundaries.

## Enhancements
- Better UI/UX
- Local persistance
- Search functionality
- Better error handling and error presentation to the user

## Conclusion

This architecture provides a solid foundation for a robust, scalable, and maintainable Flutter application. By following clean architecture principles, leveraging BLoC for state management, and implementing a resilient WebSocket connection strategy, the app is well-prepared to handle future growth and adapt to changing requirements.
