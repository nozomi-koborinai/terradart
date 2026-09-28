// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_zone_tracing_rules`.
const Set<String> _cloudflareZoneTracingRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_zone_tracing_rules` (derived from provider schema).
@immutable
final class ZoneTracingRulesRules {
  const ZoneTracingRulesRules({
    required this.action,
    required this.description,
    required this.enabled,
    required this.expression,
    required this.actionParameters,
  });

  final TfArg<ZoneTracingRulesRulesAction> action;

  final TfArg<String> description;

  final TfArg<bool> enabled;

  final TfArg<String> expression;

  final ZoneTracingRulesRulesActionParameters actionParameters;

  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'description': description.toTfJson(),
    'enabled': enabled.toTfJson(),
    'expression': expression.toTfJson(),
    'action_parameters': actionParameters.encode(),
  };
}

/// `action` — derived from the provider schema description.
enum ZoneTracingRulesRulesAction implements TerraformEnum {
  setTraceSettings('set_trace_settings');

  const ZoneTracingRulesRulesAction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.action_parameters` block of
/// `cloudflare_zone_tracing_rules` (derived from provider schema).
@immutable
final class ZoneTracingRulesRulesActionParameters {
  const ZoneTracingRulesRulesActionParameters({required this.samplingRatio});

  final TfArg<num> samplingRatio;

  Map<String, Object?> encode() => {'sampling_ratio': samplingRatio.toTfJson()};
}

/// Factory wrapper for `cloudflare_zone_tracing_rules`.
final class CloudflareZoneTracingRules extends Resource {
  static const String tfType = 'cloudflare_zone_tracing_rules';

  CloudflareZoneTracingRules({
    required super.localName,
    required TfArg<String> zoneId,
    required List<ZoneTracingRulesRules> rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareZoneTracingRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
