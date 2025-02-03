import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_utils/flutter_utils.dart';
import '../resources/app_images.dart';

/// {@category Widgets}
///
/// A widget that displays an image with a loading indicator and error handling.
/// Automatically detects whether [imagePath] is a network URL
/// or a local asset and loads it accordingly.
///
/// The [ImageWithLoader] displays a loader while the image is
/// loading and a placeholder if the image fails to load.
/// Supports customization for image size, shape, fit, and caching.
///
/// Example:
///
/// ```dart
/// ImageWithLoader(
///   imagePath: 'https://example.com/image.png',
///   size: Size(100, 100),
///   fit: BoxFit.cover,
///   loader: CircularProgressIndicator(),
/// )
///
/// ImageWithLoader(
///   imagePath: 'assets/images/local_image.png',
///   size: Size(100, 100),
///   fit: BoxFit.cover,
/// )
/// ```
class ImageWithLoader extends StatelessWidget {
  /// The path or URL of the image to display.
  ///
  /// Automatically detects if the path is a network URL or a local asset.
  final String imagePath;

  /// The size of the image.
  final Size? size;

  /// How the image should be fitted within its container.
  final BoxFit? fit;

  /// The fit type for the placeholder image in case of an error.
  final BoxFit? placeholderFit;

  /// The shape of the image (e.g., circle, rectangle).
  final BoxShape? shape;

  /// A custom loader widget shown while the image is loading.
  final Widget? loader;

  /// The width used for image caching.
  final int? cacheWidth;

  /// The height used for image caching.
  final int? cacheHeight;

  /// Custom [ImageProvider] for loading the image.
  ///
  /// If provided, this takes priority over [imagePath], and [imagePath] will be ignored.
  final ImageProvider? imageProvider;

  /// Clears the memory cache when the widget is disposed.
  final bool clearMemoryCacheWhenDispose;

  const ImageWithLoader(
      {super.key,
      required this.imagePath,
      this.size,
      this.fit = BoxFit.contain,
      this.placeholderFit = BoxFit.contain,
      this.clearMemoryCacheWhenDispose = false,
      this.shape,
      this.loader,
      this.cacheWidth,
      this.cacheHeight,
      this.imageProvider});

  @override
  Widget build(BuildContext context) {
    final image = imageProvider ??
        imagePath.createImageProviderFromPath(
            cacheWidth: cacheWidth, cacheHeight: cacheHeight);

    return ExtendedImage(
      image: image,
      fit: fit,
      width: size?.width,
      height: size?.height,
      shape: shape,
      clearMemoryCacheWhenDispose: clearMemoryCacheWhenDispose,
      loadStateChanged: (state) => switch (state.extendedImageLoadState) {
        LoadState.loading =>
          loader ?? const Center(child: CircularProgressIndicator()),
        LoadState.completed => _buildLoadedImage(state),
        LoadState.failed => _buildErrorImage()
      },
    );
  }

  Widget _buildLoadedImage(ExtendedImageState state) {
    return ExtendedRawImage(
      image: state.extendedImageInfo?.image,
      fit: fit,
      width: size?.width,
      height: size?.height,
    ).animate().fadeIn();
  }

  Widget _buildErrorImage() {
    return Image.asset(
      AppImages.placeholderImage,
      fit: placeholderFit,
    );
  }
}
