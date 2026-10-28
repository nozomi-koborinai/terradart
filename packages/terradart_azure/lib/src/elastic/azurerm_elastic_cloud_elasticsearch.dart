// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_elastic_cloud_elasticsearch`.
const Set<String> _azurermElasticCloudElasticsearchSensitive = <String>{};

/// Typed helper for the `logs` block of
/// `azurerm_elastic_cloud_elasticsearch` (derived from provider schema).
@immutable
final class ElasticCloudElasticsearchLogs {
  const ElasticCloudElasticsearchLogs({
    this.sendActivityLogs,
    this.sendAzureadLogs,
    this.sendSubscriptionLogs,
    this.filteringTag,
  });

  final TfArg<bool>? sendActivityLogs;

  final TfArg<bool>? sendAzureadLogs;

  final TfArg<bool>? sendSubscriptionLogs;

  final List<ElasticCloudElasticsearchFilteringTag>? filteringTag;

  @internal
  Map<String, Object?> encode() => {
    'send_activity_logs': ?sendActivityLogs?.toTfJson(),
    'send_azuread_logs': ?sendAzureadLogs?.toTfJson(),
    'send_subscription_logs': ?sendSubscriptionLogs?.toTfJson(),
    if (filteringTag != null)
      'filtering_tag': [for (final e in filteringTag!) e.encode()],
  };
}

/// Typed helper for the `logs.filtering_tag` block of
/// `azurerm_elastic_cloud_elasticsearch` (derived from provider schema).
@immutable
final class ElasticCloudElasticsearchFilteringTag {
  const ElasticCloudElasticsearchFilteringTag({
    required this.action,
    required this.name,
    required this.value,
  });

  final ElasticCloudElasticsearchAction action;

  final TfArg<String> name;

  final TfArg<String> value;

  @internal
  Map<String, Object?> encode() => {
    'action': action.toTfJson(),
    'name': name.toTfJson(),
    'value': value.toTfJson(),
  };
}

/// `action` — derived from the provider schema description.
extension type const ElasticCloudElasticsearchAction._(TfArg<String> _)
    implements TfArg<String> {
  ElasticCloudElasticsearchAction.variable(String name)
    : this._(TfArg.variable(name));
  ElasticCloudElasticsearchAction.expression(String template)
    : this._(TfArg.expression(template));
  const ElasticCloudElasticsearchAction.arg(TfArg<String> arg) : this._(arg);

  static const exclude = ElasticCloudElasticsearchAction._(
    TfArgLiteral('Exclude'),
  );
  static const include = ElasticCloudElasticsearchAction._(
    TfArgLiteral('Include'),
  );

  static const List<ElasticCloudElasticsearchAction> values = [
    exclude,
    include,
  ];
}

/// Factory wrapper for `azurerm_elastic_cloud_elasticsearch`.
final class AzurermElasticCloudElasticsearch extends Resource {
  static const String tfType = 'azurerm_elastic_cloud_elasticsearch';

  AzurermElasticCloudElasticsearch(
    super.localName, {
    required TfArg<String> elasticCloudEmailAddress,
    required TfArg<String> location,
    TfArg<bool>? monitoringEnabled,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> skuName,
    TfArg<Map<String, String>>? tags,
    ElasticCloudElasticsearchLogs? logs,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'elastic_cloud_email_address': elasticCloudEmailAddress,
           'location': location,
           'monitoring_enabled': ?monitoringEnabled,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'sku_name': skuName,
           'tags': ?tags,
           if (logs != null) 'logs': TfArg.literal(logs.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermElasticCloudElasticsearchSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermElasticCloudElasticsearch>`.
  RefTo<AzurermElasticCloudElasticsearch> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `elastic_cloud_deployment_id` attribute.
  TfRef<String> get elasticCloudDeploymentId =>
      TfRef.attribute<String>(this, 'elastic_cloud_deployment_id');

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

  /// Reference to `elastic_cloud_email_address` attribute.
  TfRef<String> get elasticCloudEmailAddress =>
      TfRef.attribute<String>(this, 'elastic_cloud_email_address');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `monitoring_enabled` attribute.
  TfRef<bool> get monitoringEnabled =>
      TfRef.attribute<bool>(this, 'monitoring_enabled');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `sku_name` attribute.
  TfRef<String> get skuName => TfRef.attribute<String>(this, 'sku_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
