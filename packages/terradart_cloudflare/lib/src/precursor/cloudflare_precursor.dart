// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_precursor`.
const Set<String> _cloudflarePrecursorSensitive = <String>{};

/// Precursor enum for `mode`.
extension type const PrecursorMode._(TfArg<String> _) implements TfArg<String> {
  PrecursorMode.variable(String name) : this._(TfArg.variable(name));
  PrecursorMode.expression(String template)
    : this._(TfArg.expression(template));
  const PrecursorMode.arg(TfArg<String> arg) : this._(arg);

  static const off = PrecursorMode._(TfArgLiteral('off'));
  static const monitor = PrecursorMode._(TfArgLiteral('monitor'));
  static const arm = PrecursorMode._(TfArgLiteral('arm'));

  static const List<PrecursorMode> values = [off, monitor, arm];
}

/// Typed helper for the `rules` block of
/// `cloudflare_precursor` (derived from provider schema).
@immutable
final class PrecursorRules {
  const PrecursorRules({
    this.description,
    this.enabled,
    required this.expression,
    required this.showInterstitial,
  });

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final TfArg<bool> showInterstitial;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'show_interstitial': showInterstitial.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_precursor`.
///
/// Precursor detection for a zone: `mode` controls zone-level detection
/// (`off`, `monitor`, or `arm`), `showInterstitial` controls whether an
/// interstitial is shown on action, and `rules` holds the ordered filter rules.
final class CloudflarePrecursor extends Resource {
  static const String tfType = 'cloudflare_precursor';

  CloudflarePrecursor(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    PrecursorMode? mode,
    TfArg<bool>? showInterstitial,
    List<PrecursorRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'mode': ?mode,
           'show_interstitial': ?showInterstitial,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePrecursorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePrecursor>`.
  RefTo<CloudflarePrecursor> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `show_interstitial` attribute.
  TfRef<bool> get showInterstitial =>
      TfRef.attribute<bool>(this, 'show_interstitial');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
