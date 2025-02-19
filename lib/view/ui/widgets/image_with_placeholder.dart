import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
/// Supports customization for image size, shape, fit, and caching.
///
/// Example:
///
/// ```dart
/// ImageWithPlaceholder(
///   imagePath: 'https://example.com/image.png',
///   size: Size(100, 100),
///   fit: BoxFit.cover,
///   placeholder: Image.asset('assets/images/custom_placeholder.png'),
/// )
///
/// ImageWithPlaceholder(
///   imagePath: 'assets/images/local_image.png',
///   size: Size(100, 100),
///   fit: BoxFit.cover,
/// )
/// ```
class ImageWithPlaceholder extends StatelessWidget {
  /// The path or URL of the image to display.
  ///
  /// Automatically detects if the path is a network URL or a local asset.
  final String? imagePath;

  /// Custom [ImageProvider] for loading the image.
  ///
  /// If provided, this takes priority over [imagePath], and [imagePath] will be ignored.
  final ImageProvider? imageProvider;

  /// The size of the image.
  final Size? size;

  /// How the image should be fitted within its container.
  final BoxFit? fit;

  /// The fit type for the placeholder image in case of an error.
  final BoxFit? placeholderFit;

  /// The clip behavior of the image.
  final Clip clipBehavior;

  /// A custom placeholder widget shown while the image is loading.
  ///
  /// If not provided, the default placeholder image is used.
  final Widget? placeholder;

  /// A custom error widget shown if the image fails to load.
  ///
  /// If not provided, the default placeholder image is used.
  final Widget? error;

  /// The shape of the image (e.g., circle, rectangle).
  final BoxShape? shape;

  /// The width used for image caching.
  final int? cacheWidth;

  /// The height used for image caching.
  final int? cacheHeight;

  /// Clears the memory cache when the widget is disposed.
  final bool clearMemoryCacheWhenDispose;

  const ImageWithPlaceholder({
    super.key,
    this.imagePath,
    this.imageProvider,
    this.size,
    this.fit = BoxFit.cover,
    this.placeholderFit = BoxFit.cover,
    this.clipBehavior = Clip.antiAlias,
    this.placeholder,
    this.error,
    this.shape,
    this.cacheWidth,
    this.cacheHeight,
    this.clearMemoryCacheWhenDispose = false,
  }) : assert(
         imagePath != null || imageProvider != null,
         'Either imagePath or imageProvider must be provided',
       );

  @override
  Widget build(BuildContext context) {
    return ExtendedImage(
      image: _createImageProvider(),
      fit: fit,
      width: size?.width,
      height: size?.height,
      shape: shape,
      clipBehavior: clipBehavior,
      clearMemoryCacheWhenDispose: clearMemoryCacheWhenDispose,
      loadStateChanged: (state) => _handleLoadState(state),
    );
  }

  ImageProvider _createImageProvider() {
    if (imagePath?.isRemoteLink() == true) {
      return ExtendedNetworkImageProvider(imagePath!, cache: true, scale: 1.0);
    }

    return imageProvider ??
        imagePath.createImageProviderFromPath(
          cacheWidth: cacheWidth,
          cacheHeight: cacheHeight,
        );
  }

  Widget? _handleLoadState(ExtendedImageState state) {
    return switch (state.extendedImageLoadState) {
      LoadState.loading => _buildLoader(),
      LoadState.completed => _buildLoadedImage(state),
      LoadState.failed => _buildErrorImage(),
    };
  }

  Widget _buildLoader() {
    return placeholder ?? _placeholderImage();
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
    return error ?? _placeholderImage();
  }

  Widget _placeholderImage() {
    return Image.asset(AppImages.placeholderImage, fit: placeholderFit ?? fit);
  }
}
