// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_zone_tracing_rules`.
const Set<String> _cloudflareZoneTracingRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_zone_tracing_rules` (derived from provider schema).
@immutable
final class ZoneTracingRules {
  const ZoneTracingRules({
    required this.action,
    required this.description,
    required this.enabled,
    required this.expression,
    required this.actionParameters,
  });

  final TfArg<ZoneTracingRulesAction> action;

  final TfArg<String> description;

  final TfArg<bool> enabled;

  final TfArg<String> expression;

  final ZoneTracingRulesActionParameters actionParameters;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': description.toTfJson(),
    'enabled': enabled.toTfJson(),
    'expression': expression.toTfJson(),
    'action_parameters': actionParameters.encode(),
  };
}

/// `action` — derived from the provider schema description.
enum ZoneTracingRulesAction implements TerraformEnum {
  setTraceSettings('set_trace_settings');

  const ZoneTracingRulesAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action_parameters` block of
/// `cloudflare_zone_tracing_rules` (derived from provider schema).
@immutable
final class ZoneTracingRulesActionParameters {
  const ZoneTracingRulesActionParameters({required this.samplingRatio});

  final TfArg<num> samplingRatio;

  Map<String, Object?> encode() => {'sampling_ratio': samplingRatio.toTfJson()};
}

/// Factory wrapper for `cloudflare_zone_tracing_rules`.
final class CloudflareZoneTracingRules extends Resource {
  static const String tfType = 'cloudflare_zone_tracing_rules';

  CloudflareZoneTracingRules(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    required List<ZoneTracingRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareZoneTracingRules>`.
  RefTo<CloudflareZoneTracingRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
