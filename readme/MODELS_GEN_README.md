# Models Generation

## Overview

The project leverages the [`dart_mappable`](https://pub.dev/packages/dart_mappable) package to
automatically generate essential model features, such as:

- `from/toJson` methods for seamless serialization
- Overridden `==` and `hashCode` for proper value comparisons
- Custom `toString()` for clear object representation
- `copyWith` for convenient object duplication with modifications

## Configuration

To align with the familiar naming conventions of
[`json_serializable`](https://pub.dev/packages/json_serializable),
method renaming is configured in`build.yaml`:

```yaml
  dart_mappable_builder:
    options:
      renameMethods:
        fromJson: fromJsonString
        toJson: toJsonString
        fromMap: fromJson
        toMap: toJson
```

## Mappable Classes

### Entities Without Serialization Methods

Entities that do not require serialization use the predefined `MappableEntity` in:

```
lib/domain/entities/mappable_entity.dart
```

**Example:**

```dart
import '../mappable_entity.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'flavors_data.mapper.dart';

@mappableEntity
class FlavorsData with FlavorsDataMappable {
  final List<String> flavors;

  const FlavorsData({
    required this.flavors,
  });
}
```

### DTOs With Serialization Methods

DTOs that require JSON serialization use `@MappableClass` with additional configuration options.

**Example:**

```dart
import 'package:dart_mappable/dart_mappable.dart';

part 'flavors_data_dto.mapper.dart';

@MappableClass(ignoreNull: true, caseStyle: CaseStyle.snakeCase)
class FlavorsDataDto with FlavorsDataDtoMappable {
  final List<String>? flavors;

  const FlavorsDataDto({
    this.flavors,
  });

  factory FlavorsDataDto.fromJson(Map<String, dynamic> json) =>
      FlavorsDataDtoMapper.fromJson(json);
}
```

## Usage

1. Ensure the following dependencies are added to your `pubspec.yaml`:

   ```yaml
   dependencies:
     dart_mappable: ^latest

   dev_dependencies:
     build_runner: ^latest
     dart_mappable_builder: ^latest
   ```

2. Implement your model as shown in the examples above [Mappable Classes](#mappable-classes).

3. Run the following command to generate the necessary code:

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

   Alternatively, use the shortcut script:

   ```bash
   rps gen
   ```

