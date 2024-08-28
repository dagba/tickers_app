
# Test task "Crypto tickers" app

[Architecture Design Document](/architecture_design_document.md)

## Features

- Ticker price change animation.
- Tickers list pagination.
- Connectivity listener and websocket connection resoration.
- Backoff Full Jitter strategy grown exponentially depends on number of retry attempt

## Screenshots and demo

### Demo:

![Demo](/assets/screenshots/demo.gif)


| Loading state                                         | Loaded state                                           | Error state                                     |
| ----------------------------------------------------- | ------------------------------------------------------ | ----------------------------------------------- |
| ![Stock List](/assets/screenshots/loading_screen.png) | ![Stock Detail](/assets/screenshots/loaded_screen.png) | ![Wallet](/assets/screenshots/error_screen.png) |

## Getting Started

Setup instructions

### Prerequisites

- Xcode (only available on macOS devices)
- Latest iOS SDK for running iOS Simulator on macOS
- [Flutter Version Manager](https://fvm.app/documentation/getting-started)

### Setup environment

Follow these steps to run the app:

1. Clone the repo:
   ```
   git clone https://github.com/dagba/tickers_app.git
   ```

2. Open project directory
    ```
    cd tickers_app
    ```
3. Install FVM:

    ```
    brew tap leoafarias/fvm
    brew install fvm
    ```

4. Setup flutter:

    ```bash
    fvm flutter doctor -v
    ```

5. Clean the project:

    ```bash
    fvm flutter clean
    ```

6. Get the project dependencies:

    ```bash
    fvm flutter pub get
    ```

7. Launch the iOS simulator:

    ```bash
    fvm flutter emulators --launch apple_ios_simulator
    ```

8. Run the app in debug mode:

    ```bash
    fvm flutter run --debug -t lib/main_dev.dart --dart-define-from-file=assets/configs/config_dev.json
    ```

## Test

### Tickers list

- View tickers price and symbol
- View last trade updates in the list first
- View price change
