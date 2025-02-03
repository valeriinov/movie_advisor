# Flutter Project
    
## Project Setup

### Prerequisites

Before running this project, ensure you have the following installed:

1. Flutter SDK: Follow
   the [official Flutter installation guide](https://flutter.dev/docs/get-started/install)
2. Dart SDK: Typically bundled with Flutter, but you can check
   the [Dart SDK installation guide](https://dart.dev/get-dart) if needed
3. Android Studio or VS Code with Flutter and Dart plugins

### Environment Setup

1. Clone this repository
2. Navigate to the project directory
3. Run following command to install dependencies:

    ```bash
    flutter pub get
    ``` 

## Project Structure
    
The base structure of this project follows the **Clean Architecture** pattern, ensuring modularity,
scalability, and maintainability. Below is the detailed structure of the project:

```
lib/
├── common/        # Shared utilities, constants, and helpers.
├── data/          # Data layer: models, repositories, data sources.
├── domain/        # Domain layer: business logic, use cases, entities.
├── view/          # Presentation layer: UI components, screens, widgets.
├── main_dev.dart  # Entry point for dev flavor.
├── main_prod.dart  # Entry point for prod flavor.
└── main.dart      # Default entry point of the Flutter application.
```

More details about the project structure can be found [here](readme/PROJECT_STRUCTURE_README.md).

## Navigation

The project implements navigation using [go_router](https://pub.dev/packages/go_router), employing
[Type-Safe Routes](https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html)
to ensure robust and type-safe routing capabilities.

More details on the implementation specifics can be
found [here](readme/PROJECT_NAVIGATION_README.md). 
    
## State Management

In this project, the `MVVM (Model-View-ViewModel)` architectural pattern is used for state
management, leveraging the [Riverpod](https://pub.dev/packages/flutter_riverpod)  library for efficient and reactive
state handling. 

More details on the implementation used in the project can be
found [here](readme/STATE_MANAGEMENT_README.md).
    
## Flavors Configuration

This project supports the following flavors:

- dev
- prod

The flavor configuration is generated using
[flutter_flavorizr](https://pub.dev/packages/flutter_flavorizr) package.

More details on configuring Flavors and Launcher Icons generation can be
found [here](readme/FLAVORS_GEN_README.md).

For information on configuring Splash screen file generation,
refer [here](readme/SPLASH_GEN_README.md).

## Custom Scripts

To simplify the execution of basic commands as well as building and running the project, 
shortcut scripts have been integrated into the project. These scripts are defined in the
`pubspec.yaml` under the `scripts` section.

The instructions for using these scripts can be found [here](readme/CUSTOM_SCRIPTS_README.md).

## Localization

This project supports the following languages:

- en ( English )
- uk ( Ukrainian )

Localization is implemented using
the [easy_localization](https://pub.dev/packages/easy_localization) package.

More details on configuring localization can be found [here](readme/LOCALIZATION_README.md).

## Models Generation

The project leverages the [`dart_mappable`](https://pub.dev/packages/dart_mappable) package to
automatically generate essential model features, such as:

- `from/toJson` methods for seamless serialization
- Overridden `==` and `hashCode` for proper value comparisons
- Custom `toString()` for clear object representation
- `copyWith` for convenient object duplication with modifications

More details on how to use model generation can be found [here](readme/MODELS_GEN_README.md).

## Environment Settings

Environment variables in the project are accessed through the `EnvProvider` interface located
at:

```
lib/data/network/env_provider/env_provider.dart
```

This interface abstracts the retrieval of environment variables, ensuring consistent and secure
access across the project.

More details on the implementation used in the project can be
found [here](readme/ENV_SETTINGS_README.md).

## Theme Settings

To configure the theme and access settings throughout the
project, [ThemeExtensions](https://api.flutter.dev/flutter/material/ThemeExtension-class.html) are
used. This approach allows for flexible and scalable handling of theme configurations, making it
easier to support features like light and dark color schemes or custom naming parameters.

More details on the implementation used in the project can be
found [here](readme/THEME_SETTINGS_README.md).

