import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../resources/app_images.dart';

/// {@category Widgets}
///
/// A widget that displays an image with a built-in placeholder and error handling.
/// Automatically detects whether [imagePath] is a network URL
/// or a local asset and loads it accordingly.
///
/// The [ImageWithPlaceholder] shows a placeholder image while the main image is loading
/// and displays the same image if loading fails.
/// Supports customization for image fit and caching.
///
/// Example:
///
/// ```dart
/// ImageWithPlaceholder(
///   imagePath: 'https://example.com/image.png',
///   fit: BoxFit.cover,
/// )
///
/// ImageWithPlaceholder(
///   imagePath: 'assets/images/local_image.png',
///   fit: BoxFit.contain,
///   placeholderFit: BoxFit.cover,
/// )
/// ```
class ImageWithPlaceholder extends StatelessWidget {
  /// Custom [ImageProvider] for loading the image.
  ///
  /// If provided, this takes priority over [imagePath], and [imagePath] will be ignored.
  final ImageProvider? imageProvider;

  /// The path or URL of the image to display.
  ///
  /// Automatically detects if the path is a network URL or a local asset.
  final String? imagePath;

  /// How the image should be fitted within its container.
  final BoxFit? fit;

  /// The fit type for the placeholder image in case of an error.
  final BoxFit? placeholderFit;

  /// Custom [ImageProvider] for the placeholder image.
  ///
  /// If not provided, the default placeholder image is used.
  final ImageProvider? placeholderProvider;

  /// The width used for image caching.
  final int? cacheWidth;

  /// The height used for image caching.
  final int? cacheHeight;

  const ImageWithPlaceholder({
    super.key,
    this.fit = BoxFit.cover,
    this.placeholderFit = BoxFit.cover,
    this.imageProvider,
    this.imagePath,
    this.placeholderProvider,
    this.cacheWidth,
    this.cacheHeight,
  });

  @override
  Widget build(BuildContext context) {
    final image = imageProvider ??
        imagePath.createImageProviderFromPath(
            cacheWidth: cacheWidth, cacheHeight: cacheHeight);
    final placeholder =
        placeholderProvider ?? const AssetImage(AppImages.placeholderImage);

    return ExtendedImage(
      image: image,
      fit: fit,
      loadStateChanged: (state) => _handleLoadState(state, placeholder),
    );
  }

  Widget? _handleLoadState(
    ExtendedImageState state,
    ImageProvider placeholder,
  ) {
    return switch (state.extendedImageLoadState) {
      LoadState.loading => Image(
          image: placeholder,
          fit: placeholderFit ?? fit,
        ),
      LoadState.completed => ExtendedRawImage(
          image: state.extendedImageInfo?.image,
          fit: fit,
        ),
      LoadState.failed => Image(
          image: placeholder,
          fit: placeholderFit ?? fit,
        ),
    };
  }
}
