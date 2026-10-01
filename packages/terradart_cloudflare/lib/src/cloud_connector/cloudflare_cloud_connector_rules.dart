// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../zone/cloudflare_zone.dart' show CloudflareZone;

/// Sensitive field paths for `cloudflare_cloud_connector_rules`.
const Set<String> _cloudflareCloudConnectorRulesSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_cloud_connector_rules` (derived from provider schema).
@immutable
final class CloudConnectorRulesRules {
  const CloudConnectorRulesRules({
    this.cloudConnectorRulesProvider,
    this.description,
    this.enabled,
    this.expression,
    this.parameters,
  });

  final TfArg<CloudConnectorRulesProvider>? cloudConnectorRulesProvider;

  final TfArg<String>? description;

  final TfArg<bool>? enabled;

  final TfArg<String>? expression;

  final CloudConnectorRulesParameters? parameters;

  Map<String, Object?> encode() => {
    'cloud_connector_rules_provider': ?cloudConnectorRulesProvider?.toTfJson(),
    'description': ?description?.toTfJson(),
    'enabled': ?enabled?.toTfJson(),
    'expression': ?expression?.toTfJson(),
    'parameters': ?parameters?.encode(),
  };
}

/// `cloud_connector_rules_provider` — derived from the provider schema description.
enum CloudConnectorRulesProvider implements TerraformEnum {
  awsS3('aws_s3'),
  cloudflareR2('cloudflare_r2'),
  gcpStorage('gcp_storage'),
  azureStorage('azure_storage'),
  ociStorage('oci_storage');

  const CloudConnectorRulesProvider(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.parameters` block of
/// `cloudflare_cloud_connector_rules` (derived from provider schema).
@immutable
final class CloudConnectorRulesParameters {
  const CloudConnectorRulesParameters({this.host});

  final TfArg<String>? host;

  Map<String, Object?> encode() => {'host': ?host?.toTfJson()};
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
    required RefTo<CloudflareZone> zoneId,
    List<CloudConnectorRulesRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'zone_id': zoneId.encodeAs('id'),
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudConnectorRulesSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareCloudConnectorRules>`.
  RefTo<CloudflareCloudConnectorRules> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `zone_id` attribute.
  TfRef<String> get zoneIdRef => TfRef.attribute<String>(this, 'zone_id');
}
