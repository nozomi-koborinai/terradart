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
final class CloudConnectorRules {
  const CloudConnectorRules({
    this.cloudConnectorRulesProvider,
    this.description,
    this.enabled,
    this.expression,
    this.parameters,
  });

  final CloudConnectorRulesProvider? cloudConnectorRulesProvider;

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
extension type const CloudConnectorRulesProvider._(TfArg<String> _)
    implements TfArg<String> {
  CloudConnectorRulesProvider.variable(String name)
    : this._(TfArg.variable(name));
  CloudConnectorRulesProvider.expression(String template)
    : this._(TfArg.expression(template));
  const CloudConnectorRulesProvider.arg(TfArg<String> arg) : this._(arg);

  static const awsS3 = CloudConnectorRulesProvider._(TfArgLiteral('aws_s3'));
  static const cloudflareR2 = CloudConnectorRulesProvider._(
    TfArgLiteral('cloudflare_r2'),
  );
  static const gcpStorage = CloudConnectorRulesProvider._(
    TfArgLiteral('gcp_storage'),
  );
  static const azureStorage = CloudConnectorRulesProvider._(
    TfArgLiteral('azure_storage'),
  );
  static const ociStorage = CloudConnectorRulesProvider._(
    TfArgLiteral('oci_storage'),
  );

  static const List<CloudConnectorRulesProvider> values = [
    awsS3,
    cloudflareR2,
    gcpStorage,
    azureStorage,
    ociStorage,
  ];
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

  CloudflareCloudConnectorRules(
    super.localName, {
    required RefTo<CloudflareZone> zoneId,
    List<CloudConnectorRules>? rules,
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
  TfRef<String> get zoneId => TfRef.attribute<String>(this, 'zone_id');
}
