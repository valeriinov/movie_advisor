# Localization Setup

To manage localization in the project, the *
*[easy_localization](https://pub.dev/packages/easy_localization)** package is used.

## Installation and Setup

1. Verify the dependency:

   - Ensure the `easy_localization` package is included in your `pubspec.yaml` file.

   ```yaml
   dependencies:
     easy_localization: ^latest
   ```

2. Configure Info.plist for iOS:

   - Add the following entries to your `Info.plist` file, replacing the language codes with those
   supported by your application. The codes provided below are examples:

   ```xml
   <dict>
        <key>CFBundleLocalizations</key>
        <array>
             <string>en</string> <!-- Example: English -->
             <!-- Replace these with the actual supported language codes -->
        </array>
    </dict>
   ```

3. Setup Initialization:

   - Localization setup in `main.dart` is required as per
   the [easy_localization documentation](https://pub.dev/packages/easy_localization#-installing-tab-).
   However, the `await EasyLocalization.ensureInitialized();` step is already implemented in:

   ```
   lib/view/di/system_settings.dart
   ```

## Translation Files

Translation files are located in the directory:

```
assets/translations
```

Each file represents a locale and follows the naming convention `<language code>.json` (e.g.,
`en.json`,`bg.json`).

## Generating Keys

To generate the `locale_keys.dart` file for easier reference to translation keys, execute the
following command:

```bash
dart run easy_localization:generate -f keys -o locale_keys.g.dart -O "lib/view/ui/resources" -S "assets/translations"
```

### Alternative Script

As an alternative, you can use the following script if it has been added to your `pubspec.yaml`:

```bash
rps genLocaleKeys
```

### Key File

- Generated key file will be located in:

```
lib/view/ui/resources/locale_keys.g.dart
```

## Enum for Locales

For convenient handling of locales, an `AppLocales` enum has been created. It is located at:

```
lib/common/app_locales.dart
```

Use this enum to reference supported locales in your application.

## Additional Information

Refer to the [easy_localization documentation](https://pub.dev/packages/easy_localization) for
detailed usage and advanced configuration options.

