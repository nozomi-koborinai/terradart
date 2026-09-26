// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_quicksight_theme`.
const Set<String> _awsQuicksightThemeSensitive = <String>{};

/// Typed helper for the `configuration` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfiguration {
  const QuicksightThemeConfiguration({
    this.dataColorPalette,
    this.sheet,
    this.typography,
    this.uiColorPalette,
  });

  final QuicksightThemeConfigurationDataColorPalette? dataColorPalette;

  final QuicksightThemeConfigurationSheet? sheet;

  final QuicksightThemeConfigurationTypography? typography;

  final QuicksightThemeConfigurationUiColorPalette? uiColorPalette;

  Map<String, Object?> encode() => {
    if (dataColorPalette != null)
      'data_color_palette': dataColorPalette!.encode(),
    if (sheet != null) 'sheet': sheet!.encode(),
    if (typography != null) 'typography': typography!.encode(),
    if (uiColorPalette != null) 'ui_color_palette': uiColorPalette!.encode(),
  };
}

/// Typed helper for the `configuration.data_color_palette` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationDataColorPalette {
  const QuicksightThemeConfigurationDataColorPalette({
    this.colors,
    this.emptyFillColor,
    this.minMaxGradient,
  });

  final TfArg<List<Object?>>? colors;

  final TfArg<String>? emptyFillColor;

  final TfArg<List<Object?>>? minMaxGradient;

  Map<String, Object?> encode() => {
    if (colors != null) 'colors': colors!.toTfJson(),
    if (emptyFillColor != null) 'empty_fill_color': emptyFillColor!.toTfJson(),
    if (minMaxGradient != null) 'min_max_gradient': minMaxGradient!.toTfJson(),
  };
}

/// Typed helper for the `configuration.sheet` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationSheet {
  const QuicksightThemeConfigurationSheet({this.tile, this.tileLayout});

  final QuicksightThemeConfigurationSheetTile? tile;

  final QuicksightThemeConfigurationSheetTileLayout? tileLayout;

  Map<String, Object?> encode() => {
    if (tile != null) 'tile': tile!.encode(),
    if (tileLayout != null) 'tile_layout': tileLayout!.encode(),
  };
}

/// Typed helper for the `configuration.sheet.tile` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationSheetTile {
  const QuicksightThemeConfigurationSheetTile({this.border});

  final QuicksightThemeConfigurationSheetTileBorder? border;

  Map<String, Object?> encode() => {
    if (border != null) 'border': border!.encode(),
  };
}

/// Typed helper for the `configuration.sheet.tile.border` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationSheetTileBorder {
  const QuicksightThemeConfigurationSheetTileBorder({this.show});

  final TfArg<bool>? show;

  Map<String, Object?> encode() => {if (show != null) 'show': show!.toTfJson()};
}

/// Typed helper for the `configuration.sheet.tile_layout` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationSheetTileLayout {
  const QuicksightThemeConfigurationSheetTileLayout({this.gutter, this.margin});

  final QuicksightThemeConfigurationSheetTileLayoutGutter? gutter;

  final QuicksightThemeConfigurationSheetTileLayoutMargin? margin;

  Map<String, Object?> encode() => {
    if (gutter != null) 'gutter': gutter!.encode(),
    if (margin != null) 'margin': margin!.encode(),
  };
}

/// Typed helper for the `configuration.sheet.tile_layout.gutter` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationSheetTileLayoutGutter {
  const QuicksightThemeConfigurationSheetTileLayoutGutter({this.show});

  final TfArg<bool>? show;

  Map<String, Object?> encode() => {if (show != null) 'show': show!.toTfJson()};
}

/// Typed helper for the `configuration.sheet.tile_layout.margin` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationSheetTileLayoutMargin {
  const QuicksightThemeConfigurationSheetTileLayoutMargin({this.show});

  final TfArg<bool>? show;

  Map<String, Object?> encode() => {if (show != null) 'show': show!.toTfJson()};
}

/// Typed helper for the `configuration.typography` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationTypography {
  const QuicksightThemeConfigurationTypography({this.fontFamilies});

  final List<QuicksightThemeConfigurationTypographyFontFamilies>? fontFamilies;

  Map<String, Object?> encode() => {
    if (fontFamilies != null)
      'font_families': [for (final e in fontFamilies!) e.encode()],
  };
}

/// Typed helper for the `configuration.typography.font_families` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationTypographyFontFamilies {
  const QuicksightThemeConfigurationTypographyFontFamilies({this.fontFamily});

  final TfArg<String>? fontFamily;

  Map<String, Object?> encode() => {
    if (fontFamily != null) 'font_family': fontFamily!.toTfJson(),
  };
}

/// Typed helper for the `configuration.ui_color_palette` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeConfigurationUiColorPalette {
  const QuicksightThemeConfigurationUiColorPalette({
    this.accent,
    this.accentForeground,
    this.danger,
    this.dangerForeground,
    this.dimension,
    this.dimensionForeground,
    this.measure,
    this.measureForeground,
    this.primaryBackground,
    this.primaryForeground,
    this.secondaryBackground,
    this.secondaryForeground,
    this.success,
    this.successForeground,
    this.warning,
    this.warningForeground,
  });

  final TfArg<String>? accent;

  final TfArg<String>? accentForeground;

  final TfArg<String>? danger;

  final TfArg<String>? dangerForeground;

  final TfArg<String>? dimension;

  final TfArg<String>? dimensionForeground;

  final TfArg<String>? measure;

  final TfArg<String>? measureForeground;

  final TfArg<String>? primaryBackground;

  final TfArg<String>? primaryForeground;

  final TfArg<String>? secondaryBackground;

  final TfArg<String>? secondaryForeground;

  final TfArg<String>? success;

  final TfArg<String>? successForeground;

  final TfArg<String>? warning;

  final TfArg<String>? warningForeground;

  Map<String, Object?> encode() => {
    if (accent != null) 'accent': accent!.toTfJson(),
    if (accentForeground != null)
      'accent_foreground': accentForeground!.toTfJson(),
    if (danger != null) 'danger': danger!.toTfJson(),
    if (dangerForeground != null)
      'danger_foreground': dangerForeground!.toTfJson(),
    if (dimension != null) 'dimension': dimension!.toTfJson(),
    if (dimensionForeground != null)
      'dimension_foreground': dimensionForeground!.toTfJson(),
    if (measure != null) 'measure': measure!.toTfJson(),
    if (measureForeground != null)
      'measure_foreground': measureForeground!.toTfJson(),
    if (primaryBackground != null)
      'primary_background': primaryBackground!.toTfJson(),
    if (primaryForeground != null)
      'primary_foreground': primaryForeground!.toTfJson(),
    if (secondaryBackground != null)
      'secondary_background': secondaryBackground!.toTfJson(),
    if (secondaryForeground != null)
      'secondary_foreground': secondaryForeground!.toTfJson(),
    if (success != null) 'success': success!.toTfJson(),
    if (successForeground != null)
      'success_foreground': successForeground!.toTfJson(),
    if (warning != null) 'warning': warning!.toTfJson(),
    if (warningForeground != null)
      'warning_foreground': warningForeground!.toTfJson(),
  };
}

/// Typed helper for the `permissions` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemePermissions {
  const QuicksightThemePermissions({
    required this.actions,
    required this.principal,
  });

  final TfArg<List<Object?>> actions;

  final TfArg<String> principal;

  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_theme`.
final class AwsQuicksightTheme extends Resource {
  static const String tfType = 'aws_quicksight_theme';

  AwsQuicksightTheme({
    required super.localName,
    TfArg<String>? awsAccountId,
    required TfArg<String> baseThemeId,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> themeId,
    TfArg<String>? versionDescription,
    QuicksightThemeConfiguration? configuration,
    List<QuicksightThemePermissions>? permissions,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (awsAccountId != null) 'aws_account_id': awsAccountId,
           'base_theme_id': baseThemeId,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'theme_id': themeId,
           if (versionDescription != null)
             'version_description': versionDescription,
           if (configuration != null)
             'configuration': TfArg.literal(configuration.encode()),
           if (permissions != null)
             'permissions': TfArg.literal([
               for (final e in permissions) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsQuicksightThemeSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_time` attribute.
  TfRef<String> get createdTime =>
      TfRef.attribute<String>(this, 'created_time');

  /// Reference to `last_updated_time` attribute.
  TfRef<String> get lastUpdatedTime =>
      TfRef.attribute<String>(this, 'last_updated_time');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `version_number` attribute.
  TfRef<num> get versionNumber => TfRef.attribute<num>(this, 'version_number');
}
