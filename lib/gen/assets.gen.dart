/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsAnimationGen {
  const $AssetsAnimationGen();

  /// File path: assets/animation/verify.json
  String get verify => 'assets/animation/verify.json';

  /// List of all assets
  List<String> get values => [verify];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_icon.png
  AssetGenImage get appIcon => const AssetGenImage('assets/icons/app_icon.png');

  /// File path: assets/icons/cart-icon.svg
  SvgGenImage get cartIcon => const SvgGenImage('assets/icons/cart-icon.svg');

  /// File path: assets/icons/home-icon.svg
  SvgGenImage get homeIcon => const SvgGenImage('assets/icons/home-icon.svg');

  /// File path: assets/icons/user-icon.svg
  SvgGenImage get userIcon => const SvgGenImage('assets/icons/user-icon.svg');

  /// File path: assets/icons/wallet-icon.svg
  SvgGenImage get walletIcon =>
      const SvgGenImage('assets/icons/wallet-icon.svg');

  /// List of all assets
  List<dynamic> get values =>
      [appIcon, cartIcon, homeIcon, userIcon, walletIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/O-Millionaire-Logo.png
  AssetGenImage get oMillionaireLogo =>
      const AssetGenImage('assets/images/O-Millionaire-Logo.png');

  /// File path: assets/images/advertise1.png
  AssetGenImage get advertise1 =>
      const AssetGenImage('assets/images/advertise1.png');

  /// File path: assets/images/auth_bg.png
  AssetGenImage get authBg => const AssetGenImage('assets/images/auth_bg.png');

  /// File path: assets/images/home_first_banner.png
  AssetGenImage get homeFirstBanner =>
      const AssetGenImage('assets/images/home_first_banner.png');

  /// File path: assets/images/logo-transformed.png
  AssetGenImage get logoTransformed =>
      const AssetGenImage('assets/images/logo-transformed.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/nav_bar_top.png
  AssetGenImage get navBarTop =>
      const AssetGenImage('assets/images/nav_bar_top.png');

  /// File path: assets/images/oi-logo.png
  AssetGenImage get oiLogo => const AssetGenImage('assets/images/oi-logo.png');

  /// File path: assets/images/play_now_banner_1.png
  AssetGenImage get playNowBanner1 =>
      const AssetGenImage('assets/images/play_now_banner_1.png');

  /// File path: assets/images/product-1.png
  AssetGenImage get product1 =>
      const AssetGenImage('assets/images/product-1.png');

  /// File path: assets/images/product-2.png
  AssetGenImage get product2 =>
      const AssetGenImage('assets/images/product-2.png');

  /// File path: assets/images/product-3.png
  AssetGenImage get product3 =>
      const AssetGenImage('assets/images/product-3.png');

  /// File path: assets/images/splash_screen_bg-transformed.png
  AssetGenImage get splashScreenBgTransformed =>
      const AssetGenImage('assets/images/splash_screen_bg-transformed.png');

  /// File path: assets/images/splash_screen_bg.png
  AssetGenImage get splashScreenBg =>
      const AssetGenImage('assets/images/splash_screen_bg.png');

  /// File path: assets/images/winner1.png
  AssetGenImage get winner1 => const AssetGenImage('assets/images/winner1.png');

  /// File path: assets/images/winner2.png
  AssetGenImage get winner2 => const AssetGenImage('assets/images/winner2.png');

  /// File path: assets/images/winner3.png
  AssetGenImage get winner3 => const AssetGenImage('assets/images/winner3.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        oMillionaireLogo,
        advertise1,
        authBg,
        homeFirstBanner,
        logoTransformed,
        logo,
        navBarTop,
        oiLogo,
        playNowBanner1,
        product1,
        product2,
        product3,
        splashScreenBgTransformed,
        splashScreenBg,
        winner1,
        winner2,
        winner3
      ];
}

class $AssetsStaticsGen {
  const $AssetsStaticsGen();

  /// File path: assets/statics/country_code.json
  String get countryCode => 'assets/statics/country_code.json';

  /// List of all assets
  List<String> get values => [countryCode];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/transparent _logo.svg
  SvgGenImage get transparentLogo =>
      const SvgGenImage('assets/svg/transparent _logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [transparentLogo];
}

class Assets {
  Assets._();

  static const $AssetsAnimationGen animation = $AssetsAnimationGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsStaticsGen statics = $AssetsStaticsGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
