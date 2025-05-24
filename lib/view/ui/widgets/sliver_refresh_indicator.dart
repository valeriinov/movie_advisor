import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/base_theme/colors/base_colors_ext.dart';

class SliverRefreshIndicator extends StatefulWidget {
  final Future<void> Function()? onRefresh;

  const SliverRefreshIndicator({super.key, this.onRefresh});

  @override
  State<SliverRefreshIndicator> createState() => _SliverRefreshIndicatorState();
}

class _SliverRefreshIndicatorState extends State<SliverRefreshIndicator> {
  RefreshIndicatorMode? _mode;
  double _prevProgress = 0.0;

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      onRefresh: widget.onRefresh,
      builder: _buildRefreshIndicator,
    );
  }

  Widget _buildRefreshIndicator(
    BuildContext context,
    RefreshIndicatorMode mode,
    double pulledExtent,
    double refreshTriggerPullDistance,
    double refreshIndicatorExtent,
  ) {
    final progress = _calculateProgress(
      pulledExtent,
      refreshTriggerPullDistance,
    );

    _updateValues(mode, progress);

    return SizedBox(
      height: refreshIndicatorExtent,
      child: Center(child: _buildIndicator(progress)),
    );
  }

  double _calculateProgress(double pulledExtent, double triggerDistance) {
    return pulledExtent < triggerDistance
        ? pulledExtent / triggerDistance
        : 1.0;
  }

  void _updateValues(RefreshIndicatorMode mode, double progress) {
    if (_isSameMode(mode) || _shouldUpdateProgress(progress)) {
      _prevProgress = progress;
      return;
    }

    _mode = mode;
  }

  bool _isSameMode(RefreshIndicatorMode mode) {
    return mode == _mode;
  }

  bool _shouldUpdateProgress(double progress) {
    return _mode == RefreshIndicatorMode.inactive && _prevProgress > progress;
  }

  Widget _buildIndicator(double progress) {
    switch (_mode) {
      case RefreshIndicatorMode.drag:
      case RefreshIndicatorMode.armed:
        return _buildPullIndicator(progress);
      case RefreshIndicatorMode.refresh:
        return _buildRefreshingIndicator();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildPullIndicator(double progress) {
    return Builder(
      builder: (context) {
        final colors = context.baseColors;

        return Transform.rotate(
          angle: progress * pi,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colors.refreshIndicatorBg,
            ),
            padding: const EdgeInsets.all(2),
            child: Icon(
              Icons.refresh,
              size: 34 * progress,
              color: colors.refreshIndicatorFg,
            ),
          ),
        );
      },
    );
  }

  Widget _buildRefreshingIndicator() {
    return Builder(
      builder: (context) {
        final colors = context.baseColors;

        return Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors.refreshIndicatorBg,
          ),
          child: Center(
            child: SizedBox(
              height: 22,
              width: 22,
              child: CircularProgressIndicator(
                color: colors.refreshIndicatorFg,
              ),
            ),
          ),
        );
      },
    );
  }
}
