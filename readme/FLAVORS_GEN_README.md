# Generating Flavors and Launcher Icons

To generate flavors and launcher icons for the project, the **flutter_flavorizr** package is
used ([flutter_flavorizr](https://pub.dev/packages/flutter_flavorizr)).

Flavor configuration file is located in the root directory: `flavorizr.yaml`.

Launcher icon files are located in the directory: `assets/icon`.

## Steps to Generate Flavor Files and Placeholder Icons:

1. Install Prerequisites for `flutter_flavorizr`:

    - Follow
      the [flutter_flavorizr prerequisites](https://pub.dev/packages/flutter_flavorizr#prerequisites).

2. Ensure the `flutter_flavorizr` package is included in your `pubspec.yaml` file.

    ```yaml
    dev_dependencies:
      flutter_flavorizr: ^latest
    ```

3. Update `flavorizr.yaml`:

    - Open the generated `flavorizr.yaml` file at the project root.
    - Replace the app name and bundle ID placeholders with the actual values.

4. Replace the placeholder files in the `assets/icon` directory with the required files for the
   project (keeping the same file names).

    - For file requirements, refer to
      the [LAUNCH_ICON_AND_SPLASH_SPECS.md](LAUNCH_ICON_AND_SPLASH_SPECS.md) document.

5. Run the following command to generate files:

   ```bash
    flutter pub run flutter_flavorizr
   ```

**Note:** By default, if the files in `assets/icon` are not replaced before running the generation
command, the app will use a gray square as the launcher icon.