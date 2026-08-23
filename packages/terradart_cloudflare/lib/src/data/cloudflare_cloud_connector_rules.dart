// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    TfArg<String>? zoneId,
  }) : super(
         terraformType: tfType,
         argMap: {if (zoneId != null) 'zone_id': zoneId},
       );

  @override
  Set<String> get sensitiveFields => _cloudflareCloudConnectorRulesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
