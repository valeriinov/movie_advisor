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

  /// The shape of the image (e.g., circle, rectangle).
  final BoxShape? shape;

  /// A custom loader widget shown while the image is loading.
  ///
  /// If not provided, a default [CircularProgressIndicator] is used.
  final Widget? loader;

  /// A custom error widget shown if the image fails to load.
  ///
  /// If not provided, the default placeholder image is used.
  final Widget? error;

  /// The width used for image caching.
  final int? cacheWidth;

  /// The height used for image caching.
  final int? cacheHeight;

  /// Clears the memory cache when the widget is disposed.
  final bool clearMemoryCacheWhenDispose;

  const ImageWithLoader({
    super.key,
    this.imagePath,
    this.imageProvider,
    this.size,
    this.fit = BoxFit.cover,
    this.placeholderFit = BoxFit.cover,
    this.clipBehavior = Clip.antiAlias,
    this.loader,
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
    if (imageProvider != null) return imageProvider!;

    if (imagePath?.isRemoteLink() == true) {
      return ExtendedNetworkImageProvider(imagePath!, cache: true, scale: 1.0);
    }

    if (imagePath.isNullOrEmpty) {
      return AppImages.placeholderImage.createImageProviderFromPath();
    }

    return imagePath.createImageProviderFromPath(
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
    return loader ?? _placeholderImage();
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
