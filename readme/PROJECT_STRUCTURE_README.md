# Project Structure

The base structure of this project follows the **Clean Architecture** pattern, ensuring modularity,
scalability, and maintainability. Below is the detailed structure of the project:

```
lib/
├── common/        # Shared utilities, constants, and helpers.
├── data/          # Data layer: models, repositories, data sources.
├── domain/        # Domain layer: business logic, use cases, entities.
├── view/          # Presentation layer: UI components, screens, widgets.
└── main.dart      # Entry point of the Flutter application.
```

- [Project Structure](#project-structure)
    - [Domain Layer](#domain-layer)
    - [Data Layer](#data-layer)
    - [Presentation Layer](#presentation-layer)
    - [Common Directory](#common-directory)

## Domain Layer

The **Domain Layer** contains the core business logic of the application, including entities,
repositories, and use cases. This layer is independent of other layers, ensuring high testability
and maintainability.

Below is a diagram that illustrates the structure and naming conventions used in the project:

```
domain/
├── entities/               # Business models and core entities.
│   ├── failure.dart        # Represents an error with a message.
│   ├── result.dart         # A type alias for operations returning success or failure.
│   └── <feature_name>/     # Feature-specific entities.
│       └── <feature_name>_data.dart  # Model for feature-specific data.
├── repositories/          # Abstract repository interfaces.
│   └── <feature_name>_repository.dart  # Feature-specific repository interface.
└── usecases/              # Application-specific business rules.
    └── <feature_name>_use_case.dart   # Use case for feature-specific logic.
```

### Entities

Entities are fundamental business models that define the core concepts of the application. They
encapsulate essential data and behavior without being tied to any specific framework or technology.

### Repositories

Repositories define abstract interfaces for data operations. They act as a bridge between the *
*Domain Layer** and the **Data Layer**, ensuring that the domain logic is decoupled from data
sources. Implementations of these interfaces reside in the **Data Layer**.

### Use Cases

Use cases encapsulate specific business rules and application logic. They coordinate the flow of
data to and from the **Repositories** and enforce rules that must be followed within the
application. This ensures that business logic remains clear, modular, and reusable.

## Data Layer

The **Data Layer** is responsible for managing data sources, handling data transformations, and
providing implementations for repository interfaces. It interacts with APIs, databases, and other
external sources.

Below is a diagram that illustrates the structure and naming conventions used in the project:

```
data/
├── dto/                   # Data Transfer Objects (DTOs) for data representation.
│   └── <feature_name>/    # Feature-specific DTOs.
│       ├── <feature_name>_data_dto.dart  # DTO for feature-specific data.
│       └── app_exception.dart            # Custom application exceptions.
├── mappers/              # Classes to map DTOs to domain models.
│   ├── app_mapper.dart              # Base mapper for converting errors to Failure.
│   └── <feature_name>_mapper.dart  # Mapper for feature-specific DTOs.
├── network/              # Network layer for API communication.
│   ├── env_provider/     # Environment configuration.
│   │   └── env_provider.dart  # Interface  for environment variables.
│   ├── network_manager/  # Network request manager.
│   │   └── network_manager.dart  # Interface for network requests.
│   └── services/         # Services  for handling network data logic.
│       └── <feature_name>_service.dart  # Feature-specific service for handling network data logic.
├── repositories/         # Concrete implementations of repository interfaces.
│   └── <feature_name>/  # Feature-specific Repository.
│       ├── <feature_name>_remote_data_source.dart  # Remote data source interface.
│       └── impl_<feature_name>_repository.dart     # Implementation of <feature_name>_repository.
└── sources/              # Data source implementations.
    └── impl_<feature_name>_remote_data_source.dart  # Implementation of <feature_name>_remote_data_source.
```

### DTOs

DTOs (Data Transfer Objects) are models of the Data Layer that handle data representation and
include serialization and deserialization of data received from APIs.

### Mappers

Mappers transform DTOs into domain models and vice versa. They handle conversion logic, ensuring
consistency and error mapping across the application.

### Network

The Network layer manages HTTP requests and responses. It includes error handling, request
configurations, and environment setup, enabling flexible API interactions. Services that handle
network data logic are also placed within this layer for better structure.

### Repositories

Repositories in the **Data Layer** implement the abstract repository interfaces
defined in the **Domain Layer**, handling data operations using `local` or `remote` data sources.

### Sources

Data sources provide the concrete implementation for fetching and saving data. They can interact
with APIs, databases, or other data storage solutions.

## Presentation Layer

The **Presentation Layer** is responsible for managing the user interface and user experience of the
application. It handles how data is presented to the user and how user interactions are processed.
This layer communicates with the **Domain Layer** to display data and execute user-driven actions
while maintaining a clear separation of concerns.

Below is a diagram that illustrates the structure and naming conventions used in the project:

```
view/
├── di/                         # Dependency injection setup.
│   ├── injector.dart           # Initializes and registers dependencies.
│   └── system_settings.dart    # Configures system-wide settings (e.g., orientation, localization).
└── ui/                         # UI components and base utilities.
    ├── base/                   # Base classes and abstractions for UI.
    │   └── base_status_handler.dart  # Interface for handling UI status such as loading and error states.
    ├── navigation/             # App routing and navigation logic.
    │   ├── app_router.dart     # Interface for navigation logic.
    │   ├── app_routes.dart     # Defines route names.
    │   └── impl_app_router.dart  # Implementation of app navigation.
    ├── resources/              # Centralized UI resources.
    │   ├── app_date_formats.dart  # Date formatting utilities.
    │   ├── app_fonts.dart      # Defines font names.
    │   ├── app_images.dart     # Image asset paths.
    │   └── base_theme/         # Comprehensive theme resources.
    │       ├── buttons/        # Button styles and extensions.
    │       ├── colors/         # Color definitions and extensions.
    │       │   ├── base_colors.dart      # Base color palette.
    │       │   └── base_colors_ext.dart  # Color theme extensions.
    │       ├── components/     # Styles for UI components.
    │       ├── dialogs/        # Dialog styles and configurations.
    │       ├── dimens/         # Dimension values and extensions.
    │       ├── durations/      # Standardized durations for animations and extensions.
    │       ├── inputs/         # Input field styles and extensions.
    │       ├── nav_bars/       # Navigation bar styles and extensions.
    │       └── text_styles/    # Text style configurations and extensions.
    ├── scenes/                 # UI screens grouped by features.
    │   └── <feature_name>/     # Feature-specific screens and components.
    │       ├── <feature_name>_screen.dart       # Entry point for the feature's UI and ViewModel binding.\n
    │       ├── <feature_name>_view_model/      # ViewModels for state management.
    │       │   ├── <feature_name>_state.dart   # State model for the feature.
    │       │   └── <feature_name>_view_model.dart  # ViewModel logic for the feature.
    │       └── widgets/                        # Reusable widgets for the feature.
    │           └── <feature_name>_screen_view.dart  # Detailed UI layout for the feature.
    └── widgets/                # Reusable UI components.
```

### Dependency Injection (di/)

Handles the setup and management of dependencies and system settings across the application.

### User Interface (ui/)

Contains all UI-related components, utilities, and resources for managing the application's user
interface.

- **Base (ui/base)**: Provides base classes and abstractions for UI components.
- **Navigation (ui/navigation)**: Manages app navigation and routing logic.
- **Resources (ui/resources)**: Centralized storage for UI resources such as fonts, images, and
  themes.
- **Scenes (ui/scenes)**: Organizes feature-specific UI screens, view models, and reusable widgets.
- **Widgets (ui/widgets)**: Contains reusable UI components such as dialogs, navigation bars, and
  other interactive elements that ensure consistency and reduce duplication across the app.

## Common Directory

The **Common Directory** contains shared utilities, constants, and helpers used across the
application, ensuring code reusability and consistency. This layer is independent of specific
features and provides foundational components necessary for the entire project.

```
common/
├── adapters/      # Adapter classes bridging components and external dependencies.
├── mock/          # Mock implementations and data for testing and development.
├── utils/         # Utility functions and helper methods for common operations.
└── app_locales.dart  # Defines supported locales for the application.
```





