# Environment Settings

## EnvProvider Interface

Environment variables in the application are accessed through the
`EnvProvider` interface located at:

```
lib/data/network/env_provider/env_provider.dart
```

This interface abstracts the retrieval of environment variables, ensuring consistent and secure
access across the project.

## Implementation

The project utilizes the [`flutter_dotenv`](https://pub.dev/packages/flutter_dotenv) package to load
and manage environment variables. This package allows defining environment-specific variables in a
`.env` file and accessing them within the Flutter application.

## Environment Variables Files

Since the project uses flavors, environment variables are organized in separate `.env` files
for each flavor. These files are located at the root of the project and named according to the
flavor in the format: `<flavor_name>.env`

Each file contains key-value pairs of environment variables in the format: `KEY="VALUE"`.

### Default Variables

By default, each `<flavor_name>.env` file contains:

```dotenv
BASE_URL="https://example.com"
```

## Customization

1. Adding New Variables:
    - Open **each** `<flavor_name>.env` file for all existing flavors.
    - Add new variables in the format: `KEY="VALUE"` to **every** file to ensure consistency.

   Example:
    ```dotenv
    BASE_URL="https://example.com"
    API_KEY="your_api_key_here"
    ```

2. Extending the EnvProvider Interface:
   - Implement additional getters in `EnvProvider` for newly added variables.
   - Update the implementation to load and handle these variables.

