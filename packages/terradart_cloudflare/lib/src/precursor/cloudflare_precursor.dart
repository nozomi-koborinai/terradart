// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_precursor`.
const Set<String> _cloudflarePrecursorSensitive = <String>{};

/// Precursor Default enum for `default_mode`.
extension type const PrecursorDefaultMode._(TfArg<String> _)
    implements TfArg<String> {
  PrecursorDefaultMode.variable(String name) : this._(TfArg.variable(name));
  PrecursorDefaultMode.expression(String template)
    : this._(TfArg.expression(template));
  const PrecursorDefaultMode.arg(TfArg<String> arg) : this._(arg);

  static const off = PrecursorDefaultMode._(TfArgLiteral('off'));
  static const minFriction = PrecursorDefaultMode._(
    TfArgLiteral('min-friction'),
  );
  static const maxSecurity = PrecursorDefaultMode._(
    TfArgLiteral('max-security'),
  );

  static const List<PrecursorDefaultMode> values = [
    off,
    minFriction,
    maxSecurity,
  ];
}

/// Typed helper for the `enforcement_rules` block of
/// `cloudflare_precursor` (derived from provider schema).
@immutable
final class PrecursorEnforcementRules {
  const PrecursorEnforcementRules({
    this.description,
    this.enabled,
    required this.expression,
    required this.mode,
  });

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String> expression;

  final PrecursorMode mode;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
extension type const PrecursorMode._(TfArg<String> _) implements TfArg<String> {
  PrecursorMode.variable(String name) : this._(TfArg.variable(name));
  PrecursorMode.expression(String template)
    : this._(TfArg.expression(template));
  const PrecursorMode.arg(TfArg<String> arg) : this._(arg);

  static const minFriction = PrecursorMode._(TfArgLiteral('min-friction'));
  static const maxSecurity = PrecursorMode._(TfArgLiteral('max-security'));

  static const List<PrecursorMode> values = [minFriction, maxSecurity];
}

/// Factory wrapper for `cloudflare_precursor`.
///
/// Precursor enforcement for a zone: `defaultMode` applies to every
/// request no `enforcementRules` entry matches; rules are evaluated in
/// order and cannot use `off`.
final class CloudflarePrecursor extends Resource {
  static const String tfType = 'cloudflare_precursor';

  CloudflarePrecursor(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    PrecursorDefaultMode? defaultMode,
    List<PrecursorEnforcementRules>? enforcementRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'default_mode': ?defaultMode,
           if (enforcementRules != null)
             'enforcement_rules': TfArg.literal([
               for (final e in enforcementRules) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflarePrecursorSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflarePrecursor>`.
  RefTo<CloudflarePrecursor> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `default_mode` attribute.
  TfRef<String> get defaultMode =>
      TfRef.attribute<String>(this, 'default_mode');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
