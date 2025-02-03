# Theme Settings

- [Theme Settings](#theme-provider)
    - [Theme Provider](#theme-provider)
    - [Theme Configuration](#theme-configuration)
        - [Example of Using Theme Extensions in the App](#example-of-using-theme-extensions-in-the-app)
    - [Code Generation for Theme Extensions](#code-generation-for-theme-extensions)
    - [Base Theme Resources](#base-theme-resources)
        - [Modifying Theme Properties](#modifying-theme-properties)
        - [Adding New Theme Properties and Code Generation](#adding-new-theme-properties-and-code-generation)

## Theme Provider

The theme provider in the project is the `AppTheme` class, located at:

```
lib/view/ui/resources/app_theme.dart
```

It is responsible for creating the `ThemeData` class with the necessary parameters and applied theme
extensions.

## Theme Configuration

To configure the theme and access settings throughout the
project, [ThemeExtensions](https://api.flutter.dev/flutter/material/ThemeExtension-class.html) are
used. This approach allows for flexible and scalable handling of theme configurations, making it
easier to support features like light and dark color schemes or custom naming parameters.

### Example of Using Theme Extensions in the App

```dart
@override
Widget build(BuildContext context) {
  // Accessing the colors extension
  final colors = context.baseColors;

  return Scaffold(
    appBar: AppBar(
      backgroundColor: colors
          .appBarPrimBg, // Using the primary AppBar background color from the theme extension
    ),
    body: Center(
      child: Text('Feature Screen'),
    ),
  );
}
```

## Code Generation for Theme Extensions

For generating code related to `Theme Extensions`, the project utilizes
the [theme\_tailor](https://pub.dev/packages/theme_tailor) package. This tool automates the creation
of theme extensions, ensuring consistency and reducing manual coding effort.

## Base Theme Resources

The extensions used for theme configuration are located in the directory:

```
lib/view/ui/resources/base_theme/
```

Each folder contains:

- A class with resources (constants and static functions
  returning configurations like colors and styles)
- A Theme Extension class
- A generated `theme_tailor` file

Below is a diagram that illustrates the structure and naming conventions used in the project:

```
base_theme/
├── buttons/      # Button styles and configurations (e.g., shape, padding)
│   ├── base_buttons_styles.dart             # Contains button style constants and static functions
│   ├── base_buttons_styles_ext.dart         # Defines the Theme Extension for button styles
│   └── base_buttons_styles_ext.tailor.dart  # Auto-generated file by theme_tailor for button styles
├── colors/       # Color schemes and palettes
├── components/   # Styles for reusable components like cards and list tiles
├── dialogs/      # Dialog appearance settings
├── dimens/       # Dimension constants (e.g., padding, margins)
├── durations/    # Timing configurations for animations and transitions
├── inputs/       # Input field styles, borders, and text styles
├── nav_bars/     # Navigation bar styles
└── text_styles/  # Typography and text style definitions
```

### Modifying Theme Properties

To change the values of existing properties, simply update the corresponding constants in the
resource class.

**Example:**
To change the button height to `52.0`, open:

```plaintext
lib/view/ui/resources/base_theme/buttons/base_buttons_styles.dart
```

and modify the constant:

```dart
abstract final class _BaseButtonsStyles {
  static const double btnHeight = 52.0;
}
```

### Adding New Theme Properties and Code Generation

To add a new theme property:

1. Add the property to the resource file.
2. Declare the property in the Theme Extension class.
3. Pass the value from the resource to the extension during instantiation.

   **Example:**

   In `base_nav_bars_styles.dart`:

    ```dart
    // Resource class where the new property is defined
    abstract final class _BaseNavBarsStyles {
      // Defines the primary icon theme for the AppBar
      static IconThemeData appBarPrimIconTheme(Color? color) =>
          IconThemeData(color: color);
    }
    ```

   In `base_nav_bars_styles_ext.dart`:

    ```dart
    // Factory class that passes the resource value to the Theme Extension
    abstract final class BaseNavBarsStylesFactory {
      static BaseNavBarsStyles createNavBarsStyles(BaseColors colors) {
        return BaseNavBarsStyles(
          // Passing the icon theme from the resource to the extension
          appBarPrimIconTheme: _BaseNavBarsStyles.appBarPrimIconTheme(colors.appBarPrimFg),
        );
      }
    }
    
    // Theme Extension class where the new property is declared and used
    @TailorMixin()
    class BaseNavBarsStyles extends ThemeExtension<BaseNavBarsStyles>
        with _$BaseNavBarsStylesTailorMixin {
      /// Primary IconTheme for the AppBar
      @override
      final IconThemeData appBarPrimIconTheme;
    
      BaseNavBarsStyles({
        required this.appBarPrimIconTheme,
      });
    }
    ```

4. Run the code generation using the following command:

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

**Alternative:** Use the shortcut script:

   ```bash
   rps gen
   ```