// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_precursor`.
const Set<String> _cloudflarePrecursorSensitive = <String>{};

/// Precursor Default enum for `default_mode`.
enum PrecursorDefaultMode implements TerraformEnum {
  off('off'),
  minFriction('min-friction'),
  maxSecurity('max-security');

  const PrecursorDefaultMode(this.terraformValue);
  @override
  final String terraformValue;
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

  final TfArg<PrecursorEnforcementRulesMode> mode;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': expression.toTfJson(),
    'mode': mode.toTfJson(),
  };
}

/// `mode` — derived from the provider schema description.
enum PrecursorEnforcementRulesMode implements TerraformEnum {
  minFriction('min-friction'),
  maxSecurity('max-security');

  const PrecursorEnforcementRulesMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_precursor`.
final class CloudflarePrecursor extends Resource {
  static const String tfType = 'cloudflare_precursor';

  CloudflarePrecursor({
    required super.localName,
    TfArg<PrecursorDefaultMode>? defaultMode,
    required RefTo<CloudflareZone> zoneId,
    List<PrecursorEnforcementRules>? enforcementRules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'default_mode': ?defaultMode,
           'zone_id': zoneId.encodeAs('id'),
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
}
