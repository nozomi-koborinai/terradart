// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_cloud_connector_rules`.
const Set<String> _cloudflareCloudConnectorRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_cloud_connector_rules` (derived from provider schema).
@immutable
final class CloudConnectorRulesRules {
  const CloudConnectorRulesRules({
    this.description,
    this.enabled,
    this.expression,
    this.provider,
    this.parameters,
  });

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String>? expression;

  final TfArg<String>? provider;

  final CloudConnectorRulesRulesParameters? parameters;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description!.toTfJson(),
    if (enabled != null) 'enabled': enabled!.toTfJson(),
    if (expression != null) 'expression': expression!.toTfJson(),
    if (provider != null) 'provider': provider!.toTfJson(),
    if (parameters != null) 'parameters': parameters!.encode(),
  };
}

/// Typed helper for the `rules.parameters` block of
/// `cloudflare_cloud_connector_rules` (derived from provider schema).
@immutable
final class CloudConnectorRulesRulesParameters {
  const CloudConnectorRulesRulesParameters({this.host});

  final TfArg<String>? host;

  Map<String, Object?> encode() => {if (host != null) 'host': host!.toTfJson()};
}

/// Factory wrapper for `cloudflare_cloud_connector_rules`.
///
/// Accepted Permissions
///
/// - `Cloud Connector Read` - `Cloud Connector Write`
final class CloudflareCloudConnectorRules extends Resource {
  static const String tfType = 'cloudflare_cloud_connector_rules';

  CloudflareCloudConnectorRules({
    required super.localName,
    required TfArg<String> zoneId,
    List<CloudConnectorRulesRules>? rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudConnectorRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
