// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_application_insights`.
const Set<String> _azurermApplicationInsightsSensitive = <String>{
  'connection_string',
  'instrumentation_key',
};

/// Application Insights Application enum for `application_type`.
extension type const ApplicationInsightsApplicationType._(TfArg<String> _)
    implements TfArg<String> {
  ApplicationInsightsApplicationType.variable(String name)
    : this._(TfArg.variable(name));
  ApplicationInsightsApplicationType.expression(String template)
    : this._(TfArg.expression(template));
  const ApplicationInsightsApplicationType.arg(TfArg<String> arg) : this._(arg);

  static const web = ApplicationInsightsApplicationType._(TfArgLiteral('web'));
  static const other = ApplicationInsightsApplicationType._(
    TfArgLiteral('other'),
  );
  static const java = ApplicationInsightsApplicationType._(
    TfArgLiteral('java'),
  );
  static const mobilecenter = ApplicationInsightsApplicationType._(
    TfArgLiteral('MobileCenter'),
  );
  static const phone = ApplicationInsightsApplicationType._(
    TfArgLiteral('phone'),
  );
  static const store = ApplicationInsightsApplicationType._(
    TfArgLiteral('store'),
  );
  static const ios = ApplicationInsightsApplicationType._(TfArgLiteral('ios'));
  static const nodeJs = ApplicationInsightsApplicationType._(
    TfArgLiteral('Node.JS'),
  );

  static const List<ApplicationInsightsApplicationType> values = [
    web,
    other,
    java,
    mobilecenter,
    phone,
    store,
    ios,
    nodeJs,
  ];
}

/// Factory wrapper for `azurerm_application_insights`.
final class AzurermApplicationInsights extends Resource {
  static const String tfType = 'azurerm_application_insights';

  AzurermApplicationInsights(
    super.localName, {
    required ApplicationInsightsApplicationType applicationType,
    TfArg<num>? dailyDataCapInGb,
    TfArg<bool>? dailyDataCapNotificationsEnabled,
    TfArg<bool>? forceCustomerStorageForProfiler,
    TfArg<bool>? internetIngestionEnabled,
    TfArg<bool>? internetQueryEnabled,
    TfArg<bool>? ipMaskingEnabled,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? retentionInDays,
    TfArg<num>? samplingPercentage,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'application_type': applicationType,
           'daily_data_cap_in_gb': ?dailyDataCapInGb,
           'daily_data_cap_notifications_enabled':
               ?dailyDataCapNotificationsEnabled,
           'force_customer_storage_for_profiler':
               ?forceCustomerStorageForProfiler,
           'internet_ingestion_enabled': ?internetIngestionEnabled,
           'internet_query_enabled': ?internetQueryEnabled,
           'ip_masking_enabled': ?ipMaskingEnabled,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_in_days': ?retentionInDays,
           'sampling_percentage': ?samplingPercentage,
           'tags': ?tags,
           'workspace_id': ?workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermApplicationInsightsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermApplicationInsights>`.
  RefTo<AzurermApplicationInsights> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `app_id` attribute.
  TfRef<String> get appId => TfRef.attribute<String>(this, 'app_id');

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `instrumentation_key` attribute.
  TfRef<String> get instrumentationKey =>
      TfRef.attribute<String>(this, 'instrumentation_key');

  /// Reference to `application_type` attribute.
  TfRef<String> get applicationType =>
      TfRef.attribute<String>(this, 'application_type');

  /// Reference to `daily_data_cap_in_gb` attribute.
  TfRef<num> get dailyDataCapInGb =>
      TfRef.attribute<num>(this, 'daily_data_cap_in_gb');

  /// Reference to `daily_data_cap_notifications_enabled` attribute.
  TfRef<bool> get dailyDataCapNotificationsEnabled =>
      TfRef.attribute<bool>(this, 'daily_data_cap_notifications_enabled');

  /// Reference to `force_customer_storage_for_profiler` attribute.
  TfRef<bool> get forceCustomerStorageForProfiler =>
      TfRef.attribute<bool>(this, 'force_customer_storage_for_profiler');

  /// Reference to `internet_ingestion_enabled` attribute.
  TfRef<bool> get internetIngestionEnabled =>
      TfRef.attribute<bool>(this, 'internet_ingestion_enabled');

  /// Reference to `internet_query_enabled` attribute.
  TfRef<bool> get internetQueryEnabled =>
      TfRef.attribute<bool>(this, 'internet_query_enabled');

  /// Reference to `ip_masking_enabled` attribute.
  TfRef<bool> get ipMaskingEnabled =>
      TfRef.attribute<bool>(this, 'ip_masking_enabled');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `sampling_percentage` attribute.
  TfRef<num> get samplingPercentage =>
      TfRef.attribute<num>(this, 'sampling_percentage');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
