// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_workspace`.
const Set<String> _azurermLogAnalyticsWorkspaceSensitive = <String>{
  'primary_shared_key',
  'secondary_shared_key',
};

/// Log Analytics Workspace Internet Ingestion Access enum for `internet_ingestion_access_type`.
extension type const LogAnalyticsWorkspaceInternetIngestionAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  LogAnalyticsWorkspaceInternetIngestionAccessType.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceInternetIngestionAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceInternetIngestionAccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = LogAnalyticsWorkspaceInternetIngestionAccessType._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = LogAnalyticsWorkspaceInternetIngestionAccessType._(
    TfArgLiteral('Enabled'),
  );
  static const securedbyperimeter =
      LogAnalyticsWorkspaceInternetIngestionAccessType._(
        TfArgLiteral('SecuredByPerimeter'),
      );

  static const List<LogAnalyticsWorkspaceInternetIngestionAccessType> values = [
    disabled,
    enabled,
    securedbyperimeter,
  ];
}

/// Log Analytics Workspace Internet Query Access enum for `internet_query_access_type`.
extension type const LogAnalyticsWorkspaceInternetQueryAccessType._(
  TfArg<String> _
) implements TfArg<String> {
  LogAnalyticsWorkspaceInternetQueryAccessType.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceInternetQueryAccessType.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceInternetQueryAccessType.arg(TfArg<String> arg)
    : this._(arg);

  static const disabled = LogAnalyticsWorkspaceInternetQueryAccessType._(
    TfArgLiteral('Disabled'),
  );
  static const enabled = LogAnalyticsWorkspaceInternetQueryAccessType._(
    TfArgLiteral('Enabled'),
  );
  static const securedbyperimeter =
      LogAnalyticsWorkspaceInternetQueryAccessType._(
        TfArgLiteral('SecuredByPerimeter'),
      );

  static const List<LogAnalyticsWorkspaceInternetQueryAccessType> values = [
    disabled,
    enabled,
    securedbyperimeter,
  ];
}

/// Log Analytics Workspace enum for `sku`.
extension type const LogAnalyticsWorkspaceSku._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsWorkspaceSku.variable(String name) : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceSku.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceSku.arg(TfArg<String> arg) : this._(arg);

  static const pergb2018 = LogAnalyticsWorkspaceSku._(
    TfArgLiteral('PerGB2018'),
  );
  static const pernode = LogAnalyticsWorkspaceSku._(TfArgLiteral('PerNode'));
  static const premium = LogAnalyticsWorkspaceSku._(TfArgLiteral('Premium'));
  static const standalone = LogAnalyticsWorkspaceSku._(
    TfArgLiteral('Standalone'),
  );
  static const standard = LogAnalyticsWorkspaceSku._(TfArgLiteral('Standard'));
  static const capacityreservation = LogAnalyticsWorkspaceSku._(
    TfArgLiteral('CapacityReservation'),
  );
  static const lacluster = LogAnalyticsWorkspaceSku._(
    TfArgLiteral('LACluster'),
  );
  static const unlimited = LogAnalyticsWorkspaceSku._(
    TfArgLiteral('Unlimited'),
  );

  static const List<LogAnalyticsWorkspaceSku> values = [
    pergb2018,
    pernode,
    premium,
    standalone,
    standard,
    capacityreservation,
    lacluster,
    unlimited,
  ];
}

/// Typed helper for the `identity` block of
/// `azurerm_log_analytics_workspace` (derived from provider schema).
@immutable
final class LogAnalyticsWorkspaceIdentity {
  const LogAnalyticsWorkspaceIdentity({this.identityIds, required this.type});

  final TfArg<List<String>>? identityIds;

  final TfArg<String> type;

  @internal
  Map<String, Object?> encode() => {
    'identity_ids': ?identityIds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_log_analytics_workspace`.
final class AzurermLogAnalyticsWorkspace extends Resource {
  static const String tfType = 'azurerm_log_analytics_workspace';

  AzurermLogAnalyticsWorkspace(
    super.localName, {
    TfArg<bool>? allowResourceOnlyPermissions,
    TfArg<bool>? cmkForQueryForced,
    TfArg<num>? dailyQuotaGb,
    TfArg<String>? dataCollectionRuleId,
    TfArg<bool>? immediateDataPurgeOn30DaysEnabled,
    LogAnalyticsWorkspaceInternetIngestionAccessType?
    internetIngestionAccessType,
    LogAnalyticsWorkspaceInternetQueryAccessType? internetQueryAccessType,
    TfArg<bool>? localAuthenticationEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<num>? reservationCapacityInGbPerDay,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<num>? retentionInDays,
    LogAnalyticsWorkspaceSku? sku,
    TfArg<Map<String, String>>? tags,
    LogAnalyticsWorkspaceIdentity? identity,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'allow_resource_only_permissions': ?allowResourceOnlyPermissions,
           'cmk_for_query_forced': ?cmkForQueryForced,
           'daily_quota_gb': ?dailyQuotaGb,
           'data_collection_rule_id': ?dataCollectionRuleId,
           'immediate_data_purge_on_30_days_enabled':
               ?immediateDataPurgeOn30DaysEnabled,
           'internet_ingestion_access_type': ?internetIngestionAccessType,
           'internet_query_access_type': ?internetQueryAccessType,
           'local_authentication_enabled': ?localAuthenticationEnabled,
           'location': location,
           'name': name,
           'reservation_capacity_in_gb_per_day': ?reservationCapacityInGbPerDay,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'retention_in_days': ?retentionInDays,
           'sku': ?sku,
           'tags': ?tags,
           if (identity != null) 'identity': TfArg.literal(identity.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermLogAnalyticsWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsWorkspace>`.
  RefTo<AzurermLogAnalyticsWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `primary_shared_key` attribute.
  TfRef<String> get primarySharedKey =>
      TfRef.attribute<String>(this, 'primary_shared_key');

  /// Reference to `secondary_shared_key` attribute.
  TfRef<String> get secondarySharedKey =>
      TfRef.attribute<String>(this, 'secondary_shared_key');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');

  /// Reference to `allow_resource_only_permissions` attribute.
  TfRef<bool> get allowResourceOnlyPermissions =>
      TfRef.attribute<bool>(this, 'allow_resource_only_permissions');

  /// Reference to `cmk_for_query_forced` attribute.
  TfRef<bool> get cmkForQueryForced =>
      TfRef.attribute<bool>(this, 'cmk_for_query_forced');

  /// Reference to `daily_quota_gb` attribute.
  TfRef<num> get dailyQuotaGb => TfRef.attribute<num>(this, 'daily_quota_gb');

  /// Reference to `data_collection_rule_id` attribute.
  TfRef<String> get dataCollectionRuleId =>
      TfRef.attribute<String>(this, 'data_collection_rule_id');

  /// Reference to `immediate_data_purge_on_30_days_enabled` attribute.
  TfRef<bool> get immediateDataPurgeOn30DaysEnabled =>
      TfRef.attribute<bool>(this, 'immediate_data_purge_on_30_days_enabled');

  /// Reference to `internet_ingestion_access_type` attribute.
  TfRef<String> get internetIngestionAccessType =>
      TfRef.attribute<String>(this, 'internet_ingestion_access_type');

  /// Reference to `internet_query_access_type` attribute.
  TfRef<String> get internetQueryAccessType =>
      TfRef.attribute<String>(this, 'internet_query_access_type');

  /// Reference to `local_authentication_enabled` attribute.
  TfRef<bool> get localAuthenticationEnabled =>
      TfRef.attribute<bool>(this, 'local_authentication_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `reservation_capacity_in_gb_per_day` attribute.
  TfRef<num> get reservationCapacityInGbPerDay =>
      TfRef.attribute<num>(this, 'reservation_capacity_in_gb_per_day');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `sku` attribute.
  TfRef<String> get sku => TfRef.attribute<String>(this, 'sku');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
