import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/entities/base_media/media_data.dart';
import '../../../../../domain/entities/movie/movie_data.dart';
import '../../../../../domain/entities/video/video_type.dart';
import '../../../../di/injector.dart';
import '../../../base/content_mode_view_model/content_mode.dart';
import '../../../resources/app_images.dart';
import '../../../resources/app_official_recources_urls.dart';
import '../../../resources/app_video_url.dart';
import '../../../resources/base_theme/buttons/base_buttons_styles_ext.dart';
import '../../../resources/base_theme/colors/base_colors_ext.dart';
import '../../../resources/base_theme/dimens/base_dimens_ext.dart';
import '../../../resources/base_theme/durations/base_durations_ext.dart';
import '../../../resources/locale_keys.g.dart';
import '../../../widgets/app_svg_asset.dart';
import '../details_view_model/details_state.dart';

class DetailsActionsContainer extends HookConsumerWidget {
  final MediaData data;
  final DetailsStatus status;
  final VoidCallback? onWatchlistTap;
  final VoidCallback? onWatchedTap;

  const DetailsActionsContainer({
    super.key,
    required this.data,
    required this.status,
    this.onWatchlistTap,
    this.onWatchedTap,
  });

  @override
  Widget build(context, ref) {
    final dimens = context.baseDimens;
    final trailerUrl = useMemoized(() => _getTrailerUrl(), [data]);

    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.fromLTRB(dimens.padHorPrim, 0, 8, 0),
        child: Row(
          children: [
            _buildWatchlistButton(),
            dimens.spMedium.gapHor(),
            _buildWatchedButton(),
            if (trailerUrl != null) ...[
              dimens.spSmall.gapHor(),
              _buildPlayTrailerButton(ref, trailerUrl),
            ],
            dimens.spExtSmall.gapHor(),
            _buildShareButton(ref),
          ],
        ),
      ),
    );
  }

  Widget _buildWatchlistButton() {
    return _buildButton(
      path:
          data.isInWatchlist
              ? AppImages.addWatchlistFillIcon
              : AppImages.addWatchlistIcon,
      isFeatureLoading: status is WatchlistLoadingStatus,
      onTap: onWatchlistTap,
    );
  }

  Widget _buildWatchedButton() {
    return _buildButton(
      path:
          data.isWatched
              ? AppImages.addWatchedFillIcon
              : AppImages.addWatchedIcon,
      isFeatureLoading: status is WatchedLoadingStatus,
      onTap: onWatchedTap,
    );
  }

  Widget _buildButton({
    required String path,
    VoidCallback? onTap,
    required bool isFeatureLoading,
  }) {
    return Builder(
      builder: (context) {
        final styles = context.baseButtonStyles;

        return IconButton(
          style: styles.iconBtnSecStyle,
          onPressed: !status.isLoading ? onTap : null,
          icon: Container(
            padding: 7.insAll(),
            height: 38,
            width: 38,
            child: _buildIcon(path, isFeatureLoading: isFeatureLoading),
          ),
        );
      },
    );
  }

  Widget _buildIcon(String path, {required bool isFeatureLoading}) {
    return Builder(
      builder: (context) {
        final durations = context.baseDurations;

        return AnimatedSwitcher(
          duration: durations.animSwitchPrim,
          child: isFeatureLoading ? _buildLoader() : AppSvgAsset(path: path),
        );
      },
    );
  }

  Widget _buildLoader() {
    return Builder(
      builder: (context) {
        final colors = context.baseColors;

        return CircularProgressIndicator(color: colors.btnIconSecFg);
      },
    );
  }

  Widget _buildPlayTrailerButton(WidgetRef ref, String trailerUrl) {
    final urlLauncher = ref.urlLauncher;

    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.fromLTRB(6, 8, 12, 8),
          ),
          onPressed: () => urlLauncher.openUrl(trailerUrl),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.play_arrow_rounded, size: 28),
              4.gapHor(),
              Flexible(child: Text(LocaleKeys.playTrailerButton.tr())),
            ],
          ),
        ).paddingOnly(top: 4),
      ),
    );
  }

  String? _getTrailerUrl() {
    final trailer = data.videos.firstWhereOrNull(
      (e) => e.type == VideoType.trailer,
    );

    if (trailer == null) return null;

    return AppVideoUrl.createUrl(trailer.key);
  }

  Widget _buildShareButton(WidgetRef ref) {
    final contentMode =
        data is MovieData ? ContentMode.movies : ContentMode.series;

    return IconButton(
      onPressed:
          () => ref.share.shareText(
            AppOfficialResourcesUrls.detailsLink(data.id, contentMode),
          ),
      icon: AppSvgAsset(
        path: AppImages.shareIcon,
        width: 22,
        height: 22,
      ).paddingOnly(right: 2),
    ).paddingOnly(top: 4);
  }
}
