// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_activity_log_alert`.
const Set<String> _azurermMonitorActivityLogAlertSensitive = <String>{};

/// Typed helper for the `action` block of
/// `azurerm_monitor_activity_log_alert` (derived from provider schema).
@immutable
final class MonitorActivityLogAlertAction {
  const MonitorActivityLogAlertAction({
    required this.actionGroupId,
    this.webhookProperties,
  });

  final TfArg<String> actionGroupId;

  final TfArg<Map<String, String>>? webhookProperties;

  @internal
  Map<String, Object?> encode() => {
    'action_group_id': actionGroupId.toTfJson(),
    'webhook_properties': ?webhookProperties?.toTfJson(),
  };
}

/// Typed helper for the `criteria` block of
/// `azurerm_monitor_activity_log_alert` (derived from provider schema).
@immutable
final class MonitorActivityLogAlertCriteria {
  const MonitorActivityLogAlertCriteria({
    this.detail,
    required this.category,
    this.level,
    this.operationName,
    this.recommendationCategory,
    this.recommendationImpact,
    this.recommendationType,
    this.resourceGroup,
    this.resourceId,
    this.resourceProvider,
    this.resourceType,
    this.status,
    this.sub,
  });

  final MonitorActivityLogAlertDetail? detail;

  final MonitorActivityLogAlertCategory category;

  final MonitorActivityLogAlertCriteriaLevel? level;

  final TfArg<String>? operationName;

  final MonitorActivityLogAlertRecommendationCategory? recommendationCategory;

  final MonitorActivityLogAlertRecommendationImpact? recommendationImpact;

  final TfArg<String>? recommendationType;

  final MonitorActivityLogAlertResourceGroup? resourceGroup;

  final MonitorActivityLogAlertResourceId? resourceId;

  final MonitorActivityLogAlertResourceProvider? resourceProvider;

  final MonitorActivityLogAlertResourceType? resourceType;

  final MonitorActivityLogAlertStatus? status;

  final MonitorActivityLogAlertSub? sub;

  @internal
  Map<String, Object?> encode() => {
    ...?detail?.encode(),
    'category': category.toTfJson(),
    ...?level?.encode(),
    'operation_name': ?operationName?.toTfJson(),
    'recommendation_category': ?recommendationCategory?.toTfJson(),
    'recommendation_impact': ?recommendationImpact?.toTfJson(),
    'recommendation_type': ?recommendationType?.toTfJson(),
    ...?resourceGroup?.encode(),
    ...?resourceId?.encode(),
    ...?resourceProvider?.encode(),
    ...?resourceType?.encode(),
    ...?status?.encode(),
    ...?sub?.encode(),
  };
}

/// At most one of `caller`, `resource_health`, `service_health` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.caller(...)`.
sealed class MonitorActivityLogAlertDetail {
  const MonitorActivityLogAlertDetail();

  /// Sets `caller`.
  const factory MonitorActivityLogAlertDetail.caller(TfArg<String> caller) =
      MonitorActivityLogAlertDetailCaller;

  /// Sets `resource_health`.
  const factory MonitorActivityLogAlertDetail.resourceHealth(
    MonitorActivityLogAlertResourceHealth resourceHealth,
  ) = MonitorActivityLogAlertDetailResourceHealth;

  /// Sets `service_health`.
  const factory MonitorActivityLogAlertDetail.serviceHealth(
    MonitorActivityLogAlertServiceHealth serviceHealth,
  ) = MonitorActivityLogAlertDetailServiceHealth;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertDetail.caller] choice: sets `caller`.
final class MonitorActivityLogAlertDetailCaller
    extends MonitorActivityLogAlertDetail {
  const MonitorActivityLogAlertDetailCaller(this.caller);

  final TfArg<String> caller;

  @internal
  @override
  String get blockKey => 'caller';

  @internal
  @override
  Map<String, Object?> encode() => {'caller': caller.toTfJson()};
}

/// The [MonitorActivityLogAlertDetail.resourceHealth] choice: sets `resource_health`.
final class MonitorActivityLogAlertDetailResourceHealth
    extends MonitorActivityLogAlertDetail {
  const MonitorActivityLogAlertDetailResourceHealth(this.resourceHealth);

  final MonitorActivityLogAlertResourceHealth resourceHealth;

  @internal
  @override
  String get blockKey => 'resource_health';

  @internal
  @override
  Map<String, Object?> encode() => {'resource_health': resourceHealth.encode()};
}

/// The [MonitorActivityLogAlertDetail.serviceHealth] choice: sets `service_health`.
final class MonitorActivityLogAlertDetailServiceHealth
    extends MonitorActivityLogAlertDetail {
  const MonitorActivityLogAlertDetailServiceHealth(this.serviceHealth);

  final MonitorActivityLogAlertServiceHealth serviceHealth;

  @internal
  @override
  String get blockKey => 'service_health';

  @internal
  @override
  Map<String, Object?> encode() => {'service_health': serviceHealth.encode()};
}

/// At most one of `level`, `levels` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.level(...)`.
sealed class MonitorActivityLogAlertCriteriaLevel {
  const MonitorActivityLogAlertCriteriaLevel();

  /// Sets `level`.
  const factory MonitorActivityLogAlertCriteriaLevel.level(
    MonitorActivityLogAlertLevel level,
  ) = MonitorActivityLogAlertCriteriaLevelChoice;

  /// Sets `levels`.
  const factory MonitorActivityLogAlertCriteriaLevel.levels(
    EnumList<MonitorActivityLogAlertLevels> levels,
  ) = MonitorActivityLogAlertCriteriaLevelLevels;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertCriteriaLevel.level] choice: sets `level`.
final class MonitorActivityLogAlertCriteriaLevelChoice
    extends MonitorActivityLogAlertCriteriaLevel {
  const MonitorActivityLogAlertCriteriaLevelChoice(this.level);

  final MonitorActivityLogAlertLevel level;

  @internal
  @override
  String get blockKey => 'level';

  @internal
  @override
  Map<String, Object?> encode() => {'level': level.toTfJson()};
}

/// The [MonitorActivityLogAlertCriteriaLevel.levels] choice: sets `levels`.
final class MonitorActivityLogAlertCriteriaLevelLevels
    extends MonitorActivityLogAlertCriteriaLevel {
  const MonitorActivityLogAlertCriteriaLevelLevels(this.levels);

  final EnumList<MonitorActivityLogAlertLevels> levels;

  @internal
  @override
  String get blockKey => 'levels';

  @internal
  @override
  Map<String, Object?> encode() => {'levels': levels.toTfJson()};
}

/// At most one of `resource_group`, `resource_groups` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.resourceGroup(...)`.
sealed class MonitorActivityLogAlertResourceGroup {
  const MonitorActivityLogAlertResourceGroup();

  /// Sets `resource_group`.
  const factory MonitorActivityLogAlertResourceGroup.resourceGroup(
    TfArg<String> resourceGroup,
  ) = MonitorActivityLogAlertResourceGroupChoice;

  /// Sets `resource_groups`.
  const factory MonitorActivityLogAlertResourceGroup.resourceGroups(
    TfArg<List<String>> resourceGroups,
  ) = MonitorActivityLogAlertResourceGroupResourceGroups;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertResourceGroup.resourceGroup] choice: sets `resource_group`.
final class MonitorActivityLogAlertResourceGroupChoice
    extends MonitorActivityLogAlertResourceGroup {
  const MonitorActivityLogAlertResourceGroupChoice(this.resourceGroup);

  final TfArg<String> resourceGroup;

  @internal
  @override
  String get blockKey => 'resource_group';

  @internal
  @override
  Map<String, Object?> encode() => {'resource_group': resourceGroup.toTfJson()};
}

/// The [MonitorActivityLogAlertResourceGroup.resourceGroups] choice: sets `resource_groups`.
final class MonitorActivityLogAlertResourceGroupResourceGroups
    extends MonitorActivityLogAlertResourceGroup {
  const MonitorActivityLogAlertResourceGroupResourceGroups(this.resourceGroups);

  final TfArg<List<String>> resourceGroups;

  @internal
  @override
  String get blockKey => 'resource_groups';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_groups': resourceGroups.toTfJson(),
  };
}

/// At most one of `resource_id`, `resource_ids` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.resourceId(...)`.
sealed class MonitorActivityLogAlertResourceId {
  const MonitorActivityLogAlertResourceId();

  /// Sets `resource_id`.
  const factory MonitorActivityLogAlertResourceId.resourceId(
    TfArg<String> resourceId,
  ) = MonitorActivityLogAlertResourceIdChoice;

  /// Sets `resource_ids`.
  const factory MonitorActivityLogAlertResourceId.resourceIds(
    TfArg<List<String>> resourceIds,
  ) = MonitorActivityLogAlertResourceIdResourceIds;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertResourceId.resourceId] choice: sets `resource_id`.
final class MonitorActivityLogAlertResourceIdChoice
    extends MonitorActivityLogAlertResourceId {
  const MonitorActivityLogAlertResourceIdChoice(this.resourceId);

  final TfArg<String> resourceId;

  @internal
  @override
  String get blockKey => 'resource_id';

  @internal
  @override
  Map<String, Object?> encode() => {'resource_id': resourceId.toTfJson()};
}

/// The [MonitorActivityLogAlertResourceId.resourceIds] choice: sets `resource_ids`.
final class MonitorActivityLogAlertResourceIdResourceIds
    extends MonitorActivityLogAlertResourceId {
  const MonitorActivityLogAlertResourceIdResourceIds(this.resourceIds);

  final TfArg<List<String>> resourceIds;

  @internal
  @override
  String get blockKey => 'resource_ids';

  @internal
  @override
  Map<String, Object?> encode() => {'resource_ids': resourceIds.toTfJson()};
}

/// At most one of `resource_provider`, `resource_providers` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.resourceProvider(...)`.
sealed class MonitorActivityLogAlertResourceProvider {
  const MonitorActivityLogAlertResourceProvider();

  /// Sets `resource_provider`.
  const factory MonitorActivityLogAlertResourceProvider.resourceProvider(
    TfArg<String> resourceProvider,
  ) = MonitorActivityLogAlertResourceProviderChoice;

  /// Sets `resource_providers`.
  const factory MonitorActivityLogAlertResourceProvider.resourceProviders(
    TfArg<List<String>> resourceProviders,
  ) = MonitorActivityLogAlertResourceProviderResourceProviders;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertResourceProvider.resourceProvider] choice: sets `resource_provider`.
final class MonitorActivityLogAlertResourceProviderChoice
    extends MonitorActivityLogAlertResourceProvider {
  const MonitorActivityLogAlertResourceProviderChoice(this.resourceProvider);

  final TfArg<String> resourceProvider;

  @internal
  @override
  String get blockKey => 'resource_provider';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_provider': resourceProvider.toTfJson(),
  };
}

/// The [MonitorActivityLogAlertResourceProvider.resourceProviders] choice: sets `resource_providers`.
final class MonitorActivityLogAlertResourceProviderResourceProviders
    extends MonitorActivityLogAlertResourceProvider {
  const MonitorActivityLogAlertResourceProviderResourceProviders(
    this.resourceProviders,
  );

  final TfArg<List<String>> resourceProviders;

  @internal
  @override
  String get blockKey => 'resource_providers';

  @internal
  @override
  Map<String, Object?> encode() => {
    'resource_providers': resourceProviders.toTfJson(),
  };
}

/// At most one of `resource_type`, `resource_types` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.resourceType(...)`.
sealed class MonitorActivityLogAlertResourceType {
  const MonitorActivityLogAlertResourceType();

  /// Sets `resource_type`.
  const factory MonitorActivityLogAlertResourceType.resourceType(
    TfArg<String> resourceType,
  ) = MonitorActivityLogAlertResourceTypeChoice;

  /// Sets `resource_types`.
  const factory MonitorActivityLogAlertResourceType.resourceTypes(
    TfArg<List<String>> resourceTypes,
  ) = MonitorActivityLogAlertResourceTypeResourceTypes;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertResourceType.resourceType] choice: sets `resource_type`.
final class MonitorActivityLogAlertResourceTypeChoice
    extends MonitorActivityLogAlertResourceType {
  const MonitorActivityLogAlertResourceTypeChoice(this.resourceType);

  final TfArg<String> resourceType;

  @internal
  @override
  String get blockKey => 'resource_type';

  @internal
  @override
  Map<String, Object?> encode() => {'resource_type': resourceType.toTfJson()};
}

/// The [MonitorActivityLogAlertResourceType.resourceTypes] choice: sets `resource_types`.
final class MonitorActivityLogAlertResourceTypeResourceTypes
    extends MonitorActivityLogAlertResourceType {
  const MonitorActivityLogAlertResourceTypeResourceTypes(this.resourceTypes);

  final TfArg<List<String>> resourceTypes;

  @internal
  @override
  String get blockKey => 'resource_types';

  @internal
  @override
  Map<String, Object?> encode() => {'resource_types': resourceTypes.toTfJson()};
}

/// At most one of `status`, `statuses` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.status(...)`.
sealed class MonitorActivityLogAlertStatus {
  const MonitorActivityLogAlertStatus();

  /// Sets `status`.
  const factory MonitorActivityLogAlertStatus.status(TfArg<String> status) =
      MonitorActivityLogAlertStatusChoice;

  /// Sets `statuses`.
  const factory MonitorActivityLogAlertStatus.statuses(
    TfArg<List<String>> statuses,
  ) = MonitorActivityLogAlertStatusStatuses;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertStatus.status] choice: sets `status`.
final class MonitorActivityLogAlertStatusChoice
    extends MonitorActivityLogAlertStatus {
  const MonitorActivityLogAlertStatusChoice(this.status);

  final TfArg<String> status;

  @internal
  @override
  String get blockKey => 'status';

  @internal
  @override
  Map<String, Object?> encode() => {'status': status.toTfJson()};
}

/// The [MonitorActivityLogAlertStatus.statuses] choice: sets `statuses`.
final class MonitorActivityLogAlertStatusStatuses
    extends MonitorActivityLogAlertStatus {
  const MonitorActivityLogAlertStatusStatuses(this.statuses);

  final TfArg<List<String>> statuses;

  @internal
  @override
  String get blockKey => 'statuses';

  @internal
  @override
  Map<String, Object?> encode() => {'statuses': statuses.toTfJson()};
}

/// At most one of `sub_status`, `sub_statuses` on the `criteria` block of `azurerm_monitor_activity_log_alert`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.subStatus(...)`.
sealed class MonitorActivityLogAlertSub {
  const MonitorActivityLogAlertSub();

  /// Sets `sub_status`.
  const factory MonitorActivityLogAlertSub.subStatus(TfArg<String> subStatus) =
      MonitorActivityLogAlertSubStatus;

  /// Sets `sub_statuses`.
  const factory MonitorActivityLogAlertSub.subStatuses(
    TfArg<List<String>> subStatuses,
  ) = MonitorActivityLogAlertSubStatuses;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();
}

/// The [MonitorActivityLogAlertSub.subStatus] choice: sets `sub_status`.
final class MonitorActivityLogAlertSubStatus
    extends MonitorActivityLogAlertSub {
  const MonitorActivityLogAlertSubStatus(this.subStatus);

  final TfArg<String> subStatus;

  @internal
  @override
  String get blockKey => 'sub_status';

  @internal
  @override
  Map<String, Object?> encode() => {'sub_status': subStatus.toTfJson()};
}

/// The [MonitorActivityLogAlertSub.subStatuses] choice: sets `sub_statuses`.
final class MonitorActivityLogAlertSubStatuses
    extends MonitorActivityLogAlertSub {
  const MonitorActivityLogAlertSubStatuses(this.subStatuses);

  final TfArg<List<String>> subStatuses;

  @internal
  @override
  String get blockKey => 'sub_statuses';

  @internal
  @override
  Map<String, Object?> encode() => {'sub_statuses': subStatuses.toTfJson()};
}

/// `category` — derived from the provider schema description.
extension type const MonitorActivityLogAlertCategory._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertCategory.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertCategory.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertCategory.arg(TfArg<String> arg) : this._(arg);

  static const administrative = MonitorActivityLogAlertCategory._(
    TfArgLiteral('Administrative'),
  );
  static const autoscale = MonitorActivityLogAlertCategory._(
    TfArgLiteral('Autoscale'),
  );
  static const policy = MonitorActivityLogAlertCategory._(
    TfArgLiteral('Policy'),
  );
  static const recommendation = MonitorActivityLogAlertCategory._(
    TfArgLiteral('Recommendation'),
  );
  static const resourcehealth = MonitorActivityLogAlertCategory._(
    TfArgLiteral('ResourceHealth'),
  );
  static const security = MonitorActivityLogAlertCategory._(
    TfArgLiteral('Security'),
  );
  static const servicehealth = MonitorActivityLogAlertCategory._(
    TfArgLiteral('ServiceHealth'),
  );

  static const List<MonitorActivityLogAlertCategory> values = [
    administrative,
    autoscale,
    policy,
    recommendation,
    resourcehealth,
    security,
    servicehealth,
  ];
}

/// `level` — derived from the provider schema description.
extension type const MonitorActivityLogAlertLevel._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertLevel.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertLevel.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertLevel.arg(TfArg<String> arg) : this._(arg);

  static const verbose = MonitorActivityLogAlertLevel._(
    TfArgLiteral('Verbose'),
  );
  static const informational = MonitorActivityLogAlertLevel._(
    TfArgLiteral('Informational'),
  );
  static const warning = MonitorActivityLogAlertLevel._(
    TfArgLiteral('Warning'),
  );
  static const error = MonitorActivityLogAlertLevel._(TfArgLiteral('Error'));
  static const critical = MonitorActivityLogAlertLevel._(
    TfArgLiteral('Critical'),
  );

  static const List<MonitorActivityLogAlertLevel> values = [
    verbose,
    informational,
    warning,
    error,
    critical,
  ];
}

/// `levels` — derived from the provider schema description.
extension type const MonitorActivityLogAlertLevels._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertLevels.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertLevels.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertLevels.arg(TfArg<String> arg) : this._(arg);

  static const verbose = MonitorActivityLogAlertLevels._(
    TfArgLiteral('Verbose'),
  );
  static const informational = MonitorActivityLogAlertLevels._(
    TfArgLiteral('Informational'),
  );
  static const warning = MonitorActivityLogAlertLevels._(
    TfArgLiteral('Warning'),
  );
  static const error = MonitorActivityLogAlertLevels._(TfArgLiteral('Error'));
  static const critical = MonitorActivityLogAlertLevels._(
    TfArgLiteral('Critical'),
  );

  static const List<MonitorActivityLogAlertLevels> values = [
    verbose,
    informational,
    warning,
    error,
    critical,
  ];
}

/// `recommendation_category` — derived from the provider schema description.
extension type const MonitorActivityLogAlertRecommendationCategory._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorActivityLogAlertRecommendationCategory.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertRecommendationCategory.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertRecommendationCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const cost = MonitorActivityLogAlertRecommendationCategory._(
    TfArgLiteral('Cost'),
  );
  static const reliability = MonitorActivityLogAlertRecommendationCategory._(
    TfArgLiteral('Reliability'),
  );
  static const operationalexcellence =
      MonitorActivityLogAlertRecommendationCategory._(
        TfArgLiteral('OperationalExcellence'),
      );
  static const performance = MonitorActivityLogAlertRecommendationCategory._(
    TfArgLiteral('Performance'),
  );
  static const highavailability =
      MonitorActivityLogAlertRecommendationCategory._(
        TfArgLiteral('HighAvailability'),
      );
  static const security = MonitorActivityLogAlertRecommendationCategory._(
    TfArgLiteral('Security'),
  );

  static const List<MonitorActivityLogAlertRecommendationCategory> values = [
    cost,
    reliability,
    operationalexcellence,
    performance,
    highavailability,
    security,
  ];
}

/// `recommendation_impact` — derived from the provider schema description.
extension type const MonitorActivityLogAlertRecommendationImpact._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorActivityLogAlertRecommendationImpact.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertRecommendationImpact.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertRecommendationImpact.arg(TfArg<String> arg)
    : this._(arg);

  static const high = MonitorActivityLogAlertRecommendationImpact._(
    TfArgLiteral('High'),
  );
  static const medium = MonitorActivityLogAlertRecommendationImpact._(
    TfArgLiteral('Medium'),
  );
  static const low = MonitorActivityLogAlertRecommendationImpact._(
    TfArgLiteral('Low'),
  );

  static const List<MonitorActivityLogAlertRecommendationImpact> values = [
    high,
    medium,
    low,
  ];
}

/// Typed helper for the `criteria.resource_health` block of
/// `azurerm_monitor_activity_log_alert` (derived from provider schema).
@immutable
final class MonitorActivityLogAlertResourceHealth {
  const MonitorActivityLogAlertResourceHealth({
    this.current,
    this.previous,
    this.reason,
  });

  final EnumList<MonitorActivityLogAlertCurrent>? current;

  final EnumList<MonitorActivityLogAlertPrevious>? previous;

  final EnumList<MonitorActivityLogAlertReason>? reason;

  @internal
  Map<String, Object?> encode() => {
    'current': ?current?.toTfJson(),
    'previous': ?previous?.toTfJson(),
    'reason': ?reason?.toTfJson(),
  };
}

/// `current` — derived from the provider schema description.
extension type const MonitorActivityLogAlertCurrent._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertCurrent.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertCurrent.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertCurrent.arg(TfArg<String> arg) : this._(arg);

  static const available = MonitorActivityLogAlertCurrent._(
    TfArgLiteral('Available'),
  );
  static const degraded = MonitorActivityLogAlertCurrent._(
    TfArgLiteral('Degraded'),
  );
  static const unavailable = MonitorActivityLogAlertCurrent._(
    TfArgLiteral('Unavailable'),
  );
  static const unknown = MonitorActivityLogAlertCurrent._(
    TfArgLiteral('Unknown'),
  );

  static const List<MonitorActivityLogAlertCurrent> values = [
    available,
    degraded,
    unavailable,
    unknown,
  ];
}

/// `previous` — derived from the provider schema description.
extension type const MonitorActivityLogAlertPrevious._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertPrevious.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertPrevious.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertPrevious.arg(TfArg<String> arg) : this._(arg);

  static const available = MonitorActivityLogAlertPrevious._(
    TfArgLiteral('Available'),
  );
  static const degraded = MonitorActivityLogAlertPrevious._(
    TfArgLiteral('Degraded'),
  );
  static const unavailable = MonitorActivityLogAlertPrevious._(
    TfArgLiteral('Unavailable'),
  );
  static const unknown = MonitorActivityLogAlertPrevious._(
    TfArgLiteral('Unknown'),
  );

  static const List<MonitorActivityLogAlertPrevious> values = [
    available,
    degraded,
    unavailable,
    unknown,
  ];
}

/// `reason` — derived from the provider schema description.
extension type const MonitorActivityLogAlertReason._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertReason.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertReason.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertReason.arg(TfArg<String> arg) : this._(arg);

  static const platforminitiated = MonitorActivityLogAlertReason._(
    TfArgLiteral('PlatformInitiated'),
  );
  static const userinitiated = MonitorActivityLogAlertReason._(
    TfArgLiteral('UserInitiated'),
  );
  static const unknown = MonitorActivityLogAlertReason._(
    TfArgLiteral('Unknown'),
  );

  static const List<MonitorActivityLogAlertReason> values = [
    platforminitiated,
    userinitiated,
    unknown,
  ];
}

/// Typed helper for the `criteria.service_health` block of
/// `azurerm_monitor_activity_log_alert` (derived from provider schema).
@immutable
final class MonitorActivityLogAlertServiceHealth {
  const MonitorActivityLogAlertServiceHealth({
    this.events,
    this.locations,
    this.services,
  });

  final EnumList<MonitorActivityLogAlertEvents>? events;

  final TfArg<List<String>>? locations;

  final TfArg<List<String>>? services;

  @internal
  Map<String, Object?> encode() => {
    'events': ?events?.toTfJson(),
    'locations': ?locations?.toTfJson(),
    'services': ?services?.toTfJson(),
  };
}

/// `events` — derived from the provider schema description.
extension type const MonitorActivityLogAlertEvents._(TfArg<String> _)
    implements TfArg<String> {
  MonitorActivityLogAlertEvents.variable(String name)
    : this._(TfArg.variable(name));
  MonitorActivityLogAlertEvents.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorActivityLogAlertEvents.arg(TfArg<String> arg) : this._(arg);

  static const incident = MonitorActivityLogAlertEvents._(
    TfArgLiteral('Incident'),
  );
  static const maintenance = MonitorActivityLogAlertEvents._(
    TfArgLiteral('Maintenance'),
  );
  static const informational = MonitorActivityLogAlertEvents._(
    TfArgLiteral('Informational'),
  );
  static const actionrequired = MonitorActivityLogAlertEvents._(
    TfArgLiteral('ActionRequired'),
  );
  static const security = MonitorActivityLogAlertEvents._(
    TfArgLiteral('Security'),
  );

  static const List<MonitorActivityLogAlertEvents> values = [
    incident,
    maintenance,
    informational,
    actionrequired,
    security,
  ];
}

/// Factory wrapper for `azurerm_monitor_activity_log_alert`.
final class AzurermMonitorActivityLogAlert extends Resource {
  static const String tfType = 'azurerm_monitor_activity_log_alert';

  AzurermMonitorActivityLogAlert(
    super.localName, {
    TfArg<String>? description,
    TfArg<bool>? enabled,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<List<String>> scopes,
    TfArg<Map<String, String>>? tags,
    List<MonitorActivityLogAlertAction>? action,
    required MonitorActivityLogAlertCriteria criteria,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'enabled': ?enabled,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scopes': scopes,
           'tags': ?tags,
           if (action != null)
             'action': TfArg.literal([for (final e in action) e.encode()]),
           'criteria': TfArg.literal(criteria.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorActivityLogAlertSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorActivityLogAlert>`.
  RefTo<AzurermMonitorActivityLogAlert> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enabled` attribute.
  TfRef<bool> get enabled => TfRef.attribute<bool>(this, 'enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scopes` attribute.
  TfRef<List<String>> get scopes =>
      TfRef.attribute<List<String>>(this, 'scopes');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
