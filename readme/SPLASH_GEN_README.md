# Generating Splash Screen

To generate a splash screen for the project, the **flutter_native_splash** package is
used ([flutter_native_splash on pub.dev](https://pub.dev/packages/flutter_native_splash)).

Splash screen files are located in the directory: `assets/splash`.

## Steps to Generate Splash Screen:

1. Ensure the `flutter_native_splash` package is included in your `pubspec.yaml` file.

    ```yaml
    dependencies:
      flutter_native_splash: ^latest
    ```

2. Replace the placeholder files in the `assets/splash` directory with the required files for the
   project for each flavor (keeping the same file names).

    - For file requirements, refer to
      the [LAUNCH_ICON_AND_SPLASH_SPECS.md](LAUNCH_ICON_AND_SPLASH_SPECS.md) document.

3. Run the following command for each flavor to generate splash screen:

        ```bash
        dart run flutter_native_splash:create --flavor <flavor>
        ```

4. Perform additional setup for the iOS platform.

    - Additional configuration is required for iOS. Follow the steps
      outlined [here](https://pub.dev/packages/flutter_native_splash#ios-setup).

**Note:** By default, if the files in `assets/splash` are not replaced before running the generation
command, the app will use a gray square as the splash screen.

## Additional Information

- Separate configuration files will be generated for each flavor in the format:

  ```
  flutter_native_splash-<flavor>.yaml
  ```

  If you need to make changes to the splash screen configuration, you can edit these files.

- The current configuration enables generation for both iOS and Android platforms.
    - You can disable generation for one platform and run the script to generate the splash screen
      step-by-step.
    - This allows you to verify and save changes for each platform separately.