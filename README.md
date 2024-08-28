
# Test task "Crypto tickers" app

[Architecture Design Document](/architecture_design_document.md)

## Features

- Ticker price change animation.
- Tickers list pagination.
- Connectivity listener and websocket connection resoration.
- Backoff Full Jitter strategy grown exponentially depends on number of retry attempt

## Screenshots

| Loading state                                         | Loaded state                                           | Error state                                     |
| ----------------------------------------------------- | ------------------------------------------------------ | ----------------------------------------------- |
| ![Stock List](/assets/screenshots/loading_screen.png) | ![Stock Detail](/assets/screenshots/loaded_screen.png) | ![Wallet](/assets/screenshots/error_screen.png) |

![Demo](/assets/screenshots/demo.gif)

## Getting Started

Setup instructions

### Prerequisites

- Xcode (only available on macOS devices)
- Latest iOS SDK for running iOS Simulator on macOS
- [Flutter Version Manager](https://fvm.app/documentation/getting-started)

### Setup environment

Follow these steps to run the app:

1. Install FVM:

    ```
    brew tap leoafarias/fvm
    brew install fvm
    ```

2. Setup flutter:

    ```bash
    fvm flutter doctor -v
    ```

3. Clean the project:

    ```bash
    fvm flutter clean
    ```

4. Get the project dependencies:

    ```bash
    fvm flutter pub get
    ```

5. Launch the iOS simulator:

    ```bash
    fvm flutter emulators --launch apple_ios_simulator
    ```

6. Run the app in debug mode:

    ```bash
    fvm flutter run --debug -t lib/main_dev.dart --dart-define-from-file=assets/configs/config_dev.json
    ```

## Test

### Tickers list

- View tickers price and symbol
- View last trade updates in the list first
- View price change
