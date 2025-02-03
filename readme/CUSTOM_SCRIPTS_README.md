# Custom Scripts

## Overview

To simplify the execution of common commands such as code generation and localization constant
generation, shortcut scripts have been integrated into the project. These scripts are defined in the
`pubspec.yaml` under the `scripts` section.

## Prerequisites

Before using these custom scripts, you need to install the `rps` (Run Pub Scripts) package:

```bash
dart pub global activate rps
```

## Usage

Once `rps` is installed, you can easily run the custom commands listed below.

### Available Scripts

#### General Scripts

- **`gen`** : Generates code using `build_runner` and deletes conflicting outputs if any.

  ```bash
  rps gen
  ```
  Equivalent to:
  ```bash
  dart run build_runner build --delete-conflicting-outputs
  ```

- **`genLocaleKeys`**:  Generates localization keys for the project.

  ```bash
  rps genLocaleKeys
  ```
  Equivalent to:
  ```bash
  dart run easy_localization:generate -f keys -o locale_keys.g.dart -O "lib/view/ui/resources" -S "assets/translations"
  ```    
    
#### Build Scripts

For convenient building and running the project with different flavors, the following build and run
scripts are available:

- **`aabDev`**:  Builds the app bundle for the `dev` flavor.

  ```bash
  rps aabDev
  ```
  Equivalent to:
  ```bash
  flutter build appbundle --flavor dev -t lib/main_dev.dart
  ```

- **`apkDev`**:  Builds the APK for the `dev` flavor.

  ```bash
  rps apkDev
  ```
  Equivalent to:
  ```bash
  flutter build apk --flavor dev -t lib/main_dev.dart
  ```

- **`runDev`**:  Runs the app for the `dev` flavor.

  ```bash
  rps runDev
  ```
  Equivalent to:
  ```bash
  flutter run --flavor dev -t lib/main_dev.dart
  ```
- **`aabProd`**:  Builds the app bundle for the `prod` flavor.

  ```bash
  rps aabProd
  ```
  Equivalent to:
  ```bash
  flutter build appbundle --flavor prod -t lib/main_prod.dart
  ```

- **`apkProd`**:  Builds the APK for the `prod` flavor.

  ```bash
  rps apkProd
  ```
  Equivalent to:
  ```bash
  flutter build apk --flavor prod -t lib/main_prod.dart
  ```

- **`runProd`**:  Runs the app for the `prod` flavor.

  ```bash
  rps runProd
  ```
  Equivalent to:
  ```bash
  flutter run --flavor prod -t lib/main_prod.dart
  ```

#### Mason CLI Scripts

To use [Mason CLI](https://pub.dev/packages/mason_cli) for 
generating custom project components, ensure it is globally activated:

```bash
dart pub global activate mason_cli
```

**Available Scripts:**

- **`genDto`**: Generates a Data Transfer Object (DTO) class in the `lib/data/dto/<dirName>/` directory.  
  After generation, you need to add the required fields and run the `rps gen` script for code
  generation.

  ```bash
  rps genDto
  ```
  Equivalent to:
  ```bash
  mason make dto
  ```

- **`genEntity`**: Creates an entity model class in the `lib/domain/entities/<dirName>/` directory.  
  After generation, add the required fields and execute the `rps gen` script for code generation.

  ```bash
  rps genEntity
  ```
  Equivalent to:
  ```bash
  mason make entity
  ```

- **`genRepo`**: Generates repository entities for the domain and data layers, including interfaces and
  implementations.  
  The generated repository includes a placeholder `fetch` method - rename it and define the
  necessary parameters for your implementation.

  ```bash
  rps genRepo
  ```
  Equivalent to:
  ```bash
  mason make repo --arch mvvm_riverpod
  ```

- **`genScene`**: Generates a base scene with a view, view model, and binding in the
  `lib/view/ui/scenes/<name>/` directory.

  ```bash
  rps genScene
  ```
  Equivalent to:
  ```bash
  mason make mason make riverpod_scene
  ```  

- **`updFonts`**: Synchronizes fonts in the `assets/fonts` directory with the project.  
  The list of connected fonts will be updated in the `pubspec.yaml` file, and a constant file with
  font names will be generated/updated in `lib/view/ui/resources/app_fonts.dart`.

  ```bash
  rps updFonts
  ```
  Equivalent to:
  ```bash
  mason make upd_fonts
  ```

- **`updImages`**: Synchronizes images in the `assets/images` directory with the project.  
  A constant file with image paths will be generated/updated in
  `lib/view/ui/resources/app_images.dart`.

  ```bash
  rps updImages
  ```
  Equivalent to:
  ```bash
  mason make upd_images
  ```
  
