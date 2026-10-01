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

  final QuicksightThemeDataColorPalette? dataColorPalette;

  final QuicksightThemeSheet? sheet;

  final QuicksightThemeTypography? typography;

  final QuicksightThemeUiColorPalette? uiColorPalette;

  @internal
  Map<String, Object?> encode() => {
    'data_color_palette': ?dataColorPalette?.encode(),
    'sheet': ?sheet?.encode(),
    'typography': ?typography?.encode(),
    'ui_color_palette': ?uiColorPalette?.encode(),
  };
}

/// Typed helper for the `configuration.data_color_palette` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeDataColorPalette {
  const QuicksightThemeDataColorPalette({
    this.colors,
    this.emptyFillColor,
    this.minMaxGradient,
  });

  final TfArg<List<String>>? colors;

  final TfArg<String>? emptyFillColor;

  final TfArg<List<String>>? minMaxGradient;

  @internal
  Map<String, Object?> encode() => {
    'colors': ?colors?.toTfJson(),
    'empty_fill_color': ?emptyFillColor?.toTfJson(),
    'min_max_gradient': ?minMaxGradient?.toTfJson(),
  };
}

/// Typed helper for the `configuration.sheet` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeSheet {
  const QuicksightThemeSheet({this.tile, this.tileLayout});

  final QuicksightThemeTile? tile;

  final QuicksightThemeTileLayout? tileLayout;

  @internal
  Map<String, Object?> encode() => {
    'tile': ?tile?.encode(),
    'tile_layout': ?tileLayout?.encode(),
  };
}

/// Typed helper for the `configuration.sheet.tile` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeTile {
  const QuicksightThemeTile({this.border});

  final QuicksightThemeBorder? border;

  @internal
  Map<String, Object?> encode() => {'border': ?border?.encode()};
}

/// Typed helper for the `configuration.sheet.tile.border` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeBorder {
  const QuicksightThemeBorder({this.show});

  final TfArg<bool>? show;

  @internal
  Map<String, Object?> encode() => {'show': ?show?.toTfJson()};
}

/// Typed helper for the `configuration.sheet.tile_layout` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeTileLayout {
  const QuicksightThemeTileLayout({this.gutter, this.margin});

  final QuicksightThemeGutter? gutter;

  final QuicksightThemeMargin? margin;

  @internal
  Map<String, Object?> encode() => {
    'gutter': ?gutter?.encode(),
    'margin': ?margin?.encode(),
  };
}

/// Typed helper for the `configuration.sheet.tile_layout.gutter` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeGutter {
  const QuicksightThemeGutter({this.show});

  final TfArg<bool>? show;

  @internal
  Map<String, Object?> encode() => {'show': ?show?.toTfJson()};
}

/// Typed helper for the `configuration.sheet.tile_layout.margin` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeMargin {
  const QuicksightThemeMargin({this.show});

  final TfArg<bool>? show;

  @internal
  Map<String, Object?> encode() => {'show': ?show?.toTfJson()};
}

/// Typed helper for the `configuration.typography` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeTypography {
  const QuicksightThemeTypography({this.fontFamilies});

  final List<QuicksightThemeFontFamilies>? fontFamilies;

  @internal
  Map<String, Object?> encode() => {
    if (fontFamilies != null)
      'font_families': [for (final e in fontFamilies!) e.encode()],
  };
}

/// Typed helper for the `configuration.typography.font_families` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeFontFamilies {
  const QuicksightThemeFontFamilies({this.fontFamily});

  final TfArg<String>? fontFamily;

  @internal
  Map<String, Object?> encode() => {'font_family': ?fontFamily?.toTfJson()};
}

/// Typed helper for the `configuration.ui_color_palette` block of
/// `aws_quicksight_theme` (derived from provider schema).
@immutable
final class QuicksightThemeUiColorPalette {
  const QuicksightThemeUiColorPalette({
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

  @internal
  Map<String, Object?> encode() => {
    'accent': ?accent?.toTfJson(),
    'accent_foreground': ?accentForeground?.toTfJson(),
    'danger': ?danger?.toTfJson(),
    'danger_foreground': ?dangerForeground?.toTfJson(),
    'dimension': ?dimension?.toTfJson(),
    'dimension_foreground': ?dimensionForeground?.toTfJson(),
    'measure': ?measure?.toTfJson(),
    'measure_foreground': ?measureForeground?.toTfJson(),
    'primary_background': ?primaryBackground?.toTfJson(),
    'primary_foreground': ?primaryForeground?.toTfJson(),
    'secondary_background': ?secondaryBackground?.toTfJson(),
    'secondary_foreground': ?secondaryForeground?.toTfJson(),
    'success': ?success?.toTfJson(),
    'success_foreground': ?successForeground?.toTfJson(),
    'warning': ?warning?.toTfJson(),
    'warning_foreground': ?warningForeground?.toTfJson(),
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

  final TfArg<List<String>> actions;

  final TfArg<String> principal;

  @internal
  Map<String, Object?> encode() => {
    'actions': actions.toTfJson(),
    'principal': principal.toTfJson(),
  };
}

/// Factory wrapper for `aws_quicksight_theme`.
final class AwsQuicksightTheme extends Resource {
  static const String tfType = 'aws_quicksight_theme';

  AwsQuicksightTheme(
    super.localName, {
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
           'aws_account_id': ?awsAccountId,
           'base_theme_id': baseThemeId,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'theme_id': themeId,
           'version_description': ?versionDescription,
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

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsQuicksightTheme>`.
  RefTo<AwsQuicksightTheme> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `aws_account_id` attribute.
  TfRef<String> get awsAccountId =>
      TfRef.attribute<String>(this, 'aws_account_id');

  /// Reference to `base_theme_id` attribute.
  TfRef<String> get baseThemeId =>
      TfRef.attribute<String>(this, 'base_theme_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `theme_id` attribute.
  TfRef<String> get themeId => TfRef.attribute<String>(this, 'theme_id');

  /// Reference to `version_description` attribute.
  TfRef<String> get versionDescription =>
      TfRef.attribute<String>(this, 'version_description');
}
