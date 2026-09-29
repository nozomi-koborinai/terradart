// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../cloud_connector/cloudflare_cloud_connector_rules.dart';

/// Sensitive field paths for `cloudflare_cloud_connector_rules`.
const Set<String> _cloudflareCloudConnectorRulesSensitive = <String>{};

/// Factory wrapper for `cloudflare_cloud_connector_rules`.
///
/// Accepted Permissions
///
/// - `Cloud Connector Read` - `Cloud Connector Write`
final class DataCloudflareCloudConnectorRules extends Data {
  static const String tfType = 'cloudflare_cloud_connector_rules';

  DataCloudflareCloudConnectorRules({
    required super.localName,
    required TfArg<String> zoneId,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {'zone_id': zoneId});

  @override
  Set<String> get sensitiveFields => _cloudflareCloudConnectorRulesSensitive;

  /// A reference to the `cloudflare_cloud_connector_rules` this data source reads, for
  /// arguments typed `RefTo<CloudflareCloudConnectorRules>`.
  // ignore: invalid_use_of_internal_member
  RefTo<CloudflareCloudConnectorRules> get ref => RefTo.read(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cloud_connector_rules_provider` attribute.
  TfRef<String> get cloudConnectorRulesProvider =>
      TfRef.attribute<String>(this, 'cloud_connector_rules_provider');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `expression` attribute.
  TfRef<String> get expression => TfRef.attribute<String>(this, 'expression');
}
