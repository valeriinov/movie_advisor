# Project Navigation

- [Project Navigation](#project-navigation)
    - [Project Navigation System Overview](#project-navigation-system-overview)
        - [Router Configuration Provider](#router-configuration-provider)
        - [Implementing the Router Configuration](#implementing-the-router-configuration)
        - [Route Constants](#route-constants)
        - [Route Definitions](#route-definitions)
    - [Implementation Guidelines](#implementation-guidelines)
        - [Adding a New Navigation Branch](#adding-a-new-navigation-branch)
        - [Navigating to a Route](#navigating-to-a-route)
        - [Implementing Nested Navigation with Optional State Preservation](#implementing-nested-navigation-with-optional-state-preservation)

## Project Navigation System Overview

The project navigation system related files are located in the directory:

```
lib/view/ui/navigation/
```

The structure is as follows:

```
navigation/
├── app_router.dart      # Defines the AppRouter interface for navigation
├── impl_app_routes.dart      # The implementation of the AppRoutes class
├── app_routes.dart      # Centralized location for managing route names
└── routes/
   └── <navigation_branch>_routes.dart # Route definitions for each navigation branch
```

### Router Configuration Provider

The router configuration provider in the project is the `AppRouter` interface located at

```
lib/view/ui/navigation/app_router.dart
```

The `AppRouter` interface provides key navigation utilities:

- `rootNavKey`: A global navigator state key for root-level navigation
- `rootNavContext`: Convenient access to the root navigator's context
- `routerConfig`: Configures the application's routing logic using Navigator 2.0

### Implementing the Router Configuration

The project implements navigation using [go_router](https://pub.dev/packages/go_router), employing
[Type-Safe Routes](https://pub.dev/documentation/go_router/latest/topics/Type-safe%20routes-topic.html)
to ensure robust and type-safe routing capabilities.

The implementation of the `AppRouter` interface located at:

```
lib/view/ui/navigation/impl_app_routes.dart
```

### Route Constants

Route paths are centralized in the `AppRoutes` class located at:

```
lib/view/ui/navigation/app_routes.dart
```

This approach ensures consistency and reduces the likelihood of route string typos.

### Route Definitions

Route definitions are managed in the directory:

```
lib/view/ui/navigation/routes/
```

The routes are organized into separate files for each navigation branch with the name convention
`{branch}_routes.dart`.

## Implementation Guidelines

### Adding a New Navigation Branch

To add a new navigation branch:

1. Create a new file for the navigation branch in the `routes/` directory. For example:

    ```dart
    import 'package:flutter/material.dart';
    import 'package:go_router/go_router.dart';
    
    import '../../scenes/new_feature/new_feature_screen.dart';
    import '../app_routes.dart';
    
    part 'new_feature_routes.g.dart';
    
    @TypedGoRoute<NewFeatureRoute>(path: AppRoutes.newFeature)
    class NewFeatureRoute extends GoRouteData {
      @override
      Page<void> buildPage(context, state) {
        return NoTransitionPage(
          key: state.pageKey,
          name: state.fullPath,
          child: NewFeatureScreen(),
        );
      }
    }
    ```

2. Run the code generation:

    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

3. Add the new route to the router:

    ```
    GoRouter(
      navigatorKey: _rootNavKey,
      initialLocation: AppRoutes.home,
      routes: [
        $homeRoute,
        $newFeatureRoute,
      ],
    );
    ```

### Navigating to a Route

To navigate to a route, you can use the generated route class:

```
NewFeatureRoute().go(context)
```

### Implementing Nested Navigation with Optional State Preservation

Currently, `go_router` does not support the ability to optionally preserve the state for
specific branches when using `StatefulShellRoute`. By default, state is preserved for all branches,
which may not always be desired.

More information on the issue can be
found [here](https://github.com/flutter/flutter/issues/142258#issuecomment-2027985580)

Below is a guide on how to implement this functionality:

1. Create a `ExtendedShellBranch` class Extending `StatefulShellBranch`
   to manage state preservation:

   ```dart
   class ExtendedShellBranch extends StatefulShellBranch {
     /// Whether the branch should preserve its state.
     final bool saveState;
   
     ExtendedShellBranch({
       this.saveState = true,
       super.initialLocation,
       super.navigatorKey,
       super.observers,
       super.restorationScopeId,
       required super.routes,
     });
   }
   ```

2. Create Widgets for Managing Navigation Branch Stacks

   Implement container widgets to handle branch visibility and state:

   **NavBranchContainer**

   ```dart
   /// A container widget for managing navigation branches in a [StatefulShellRoute].
   class NavBranchContainer extends StatelessWidget {
     final int currentIndex;
     final List<Widget> children;
   
     const NavBranchContainer({
       super.key,
       required this.currentIndex,
       required this.children,
     });
   
     @override
     Widget build(BuildContext context) {
       return Stack(
         children: [
           IndexedStack(
             index: currentIndex,
             children: children.mapIndexed(
                   (index, child) {
                 return ExtendedShellBranchContent(
                   isActive: currentIndex == index,
                   child: child,
                 );
               },
             ).toList(),
           ),
         ],
       );
     }
   }
   ```

   **ExtendedShellBranchContent**

   ```dart
   /// A widget that wraps the content of an [ExtendedShellBranch] in a [StatefulShellRoute].
   class ExtendedShellBranchContent extends StatelessWidget {
     final bool isActive;
     final Widget child;
   
     const ExtendedShellBranchContent({
       super.key,
       required this.isActive,
       required this.child,
     });
   
     @override
     Widget build(BuildContext context) {
       final branch = (child as dynamic).branch as ExtendedShellBranch;
   
       return branch.saveState
           ? Offstage(
         offstage: !isActive,
         child: TickerMode(
           enabled: isActive,
           child: child,
         ),
       )
           : Visibility(
         visible: isActive,
         child: child,
       );
     }
   }
   ```

3. Create a Root Widget to Handle Nested Navigation

   Design a root widget to manage branch switching:

   ```dart
   class NavMenuScreen extends StatelessWidget {
     final StatefulNavigationShell navShell;
     final List<Widget> children;
   
     const NavMenuScreen({
       super.key,
       required this.navShell,
       required this.children,
     });
   
     @override
     Widget build(BuildContext context) {
       final currentIndex = navShell.currentIndex;
   
       return Scaffold(
         body: NavBranchContainer(
           currentIndex: currentIndex,
           children: children,
         ),
       );
     }
   }
   ```

4. Integrate the Root Widget in the Navigator

   Configure the `StatefulShellRoute` to use the root widget:

   ```
   StatefulShellRoute(
     builder: (_, __, child) => child,
     navigatorContainerBuilder: (context, navShell, children) {
       return NavMenuScreen(navShell: navShell, children: children);
     },
     branches: [
       ExtendedShellBranch(
         routes: [\$homeRoute],
       ),
       ExtendedShellBranch(
         saveState: false, // News branch does not save state
         routes: [\$newsRoute],
       ),
     ],
   ),
   ```