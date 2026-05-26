// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bean.png
  AssetGenImage get bean => const AssetGenImage('assets/icons/bean.png');

  /// File path: assets/icons/bike.png
  AssetGenImage get bike => const AssetGenImage('assets/icons/bike.png');

  /// File path: assets/icons/gps.png
  AssetGenImage get gps => const AssetGenImage('assets/icons/gps.png');

  /// File path: assets/icons/milk.png
  AssetGenImage get milk => const AssetGenImage('assets/icons/milk.png');

  /// File path: assets/icons/minuscircle.png
  AssetGenImage get minuscircle =>
      const AssetGenImage('assets/icons/minuscircle.png');

  /// File path: assets/icons/plus.png
  AssetGenImage get plus => const AssetGenImage('assets/icons/plus.png');

  /// File path: assets/icons/pluscircle.png
  AssetGenImage get pluscircle =>
      const AssetGenImage('assets/icons/pluscircle.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bean,
    bike,
    gps,
    milk,
    minuscircle,
    plus,
    pluscircle,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/1.png
  AssetGenImage get a1 => const AssetGenImage('assets/images/1.png');

  /// File path: assets/images/2.png
  AssetGenImage get a2 => const AssetGenImage('assets/images/2.png');

  /// File path: assets/images/3.png
  AssetGenImage get a3 => const AssetGenImage('assets/images/3.png');

  /// File path: assets/images/4.png
  AssetGenImage get a4 => const AssetGenImage('assets/images/4.png');

  /// File path: assets/images/5.png
  AssetGenImage get a5 => const AssetGenImage('assets/images/5.png');

  /// File path: assets/images/6.png
  AssetGenImage get a6 => const AssetGenImage('assets/images/6.png');

  /// File path: assets/images/banner_1.png
  AssetGenImage get banner1 =>
      const AssetGenImage('assets/images/banner_1.png');

  /// List of all assets
  List<AssetGenImage> get values => [a1, a2, a3, a4, a5, a6, banner1];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
