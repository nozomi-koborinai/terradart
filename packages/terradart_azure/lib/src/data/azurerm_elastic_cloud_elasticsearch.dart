// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../elastic/azurerm_elastic_cloud_elasticsearch.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_elastic_cloud_elasticsearch`.
const Set<String> _azurermElasticCloudElasticsearchSensitive = <String>{};

/// Typed helper for the `logs` block of
/// `azurerm_elastic_cloud_elasticsearch` (derived from provider schema).
@immutable
final class DataElasticCloudElasticsearchLogs {
  const DataElasticCloudElasticsearchLogs();

  @internal
  Map<String, Object?> encode() => {};
}

/// Factory wrapper for `azurerm_elastic_cloud_elasticsearch`.
final class DataAzurermElasticCloudElasticsearch extends Data {
  static const String tfType = 'azurerm_elastic_cloud_elasticsearch';

  DataAzurermElasticCloudElasticsearch(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    List<DataElasticCloudElasticsearchLogs>? logs,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           if (logs != null)
             'logs': TfArg.literal([for (final e in logs) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticCloudElasticsearchSensitive;

  /// A reference to the `azurerm_elastic_cloud_elasticsearch` this data source reads, for
  /// arguments typed `RefTo<AzurermElasticCloudElasticsearch>`.
  RefTo<AzurermElasticCloudElasticsearch> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `elastic_cloud_deployment_id` attribute.
  TfRef<String> get elasticCloudDeploymentId =>
      TfRef.attribute<String>(this, 'elastic_cloud_deployment_id');

  /// Reference to `elastic_cloud_email_address` attribute.
  TfRef<String> get elasticCloudEmailAddress =>
      TfRef.attribute<String>(this, 'elastic_cloud_email_address');

  /// Reference to `elastic_cloud_sso_default_url` attribute.
  TfRef<String> get elasticCloudSsoDefaultUrl =>
      TfRef.attribute<String>(this, 'elastic_cloud_sso_default_url');

  /// Reference to `elastic_cloud_user_id` attribute.
  TfRef<String> get elasticCloudUserId =>
      TfRef.attribute<String>(this, 'elastic_cloud_user_id');

  /// Reference to `elasticsearch_service_url` attribute.
  TfRef<String> get elasticsearchServiceUrl =>
      TfRef.attribute<String>(this, 'elasticsearch_service_url');

  /// Reference to `kibana_service_url` attribute.
  TfRef<String> get kibanaServiceUrl =>
      TfRef.attribute<String>(this, 'kibana_service_url');

  /// Reference to `kibana_sso_uri` attribute.
  TfRef<String> get kibanaSsoUri =>
      TfRef.attribute<String>(this, 'kibana_sso_uri');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `monitoring_enabled` attribute.
  TfRef<bool> get monitoringEnabled =>
      TfRef.attribute<bool>(this, 'monitoring_enabled');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
