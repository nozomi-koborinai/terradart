// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_native_dashboard`.
const Set<String> _googleChronicleNativeDashboardSensitive = <String>{};

/// Dashboard visibility for `google_chronicle_native_dashboard.access`.
enum ChronicleNativeDashboardAccess implements TerraformEnum {
  dashboardPrivate('DASHBOARD_PRIVATE'),
  dashboardPublic('DASHBOARD_PUBLIC');

  const ChronicleNativeDashboardAccess(this.terraformValue);
  @override
  final String terraformValue;
}

/// Dashboard type for `google_chronicle_native_dashboard.type`.
enum ChronicleNativeDashboardType implements TerraformEnum {
  curated('CURATED'),
  privateType('PRIVATE'),
  publicType('PUBLIC'),
  custom('CUSTOM'),
  marketplace('MARKETPLACE');

  const ChronicleNativeDashboardType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Terraform `deletion_policy` for Chronicle native dashboards.
enum ChronicleNativeDashboardDeletionPolicy implements TerraformEnum {
  delete('DELETE'),
  prevent('PREVENT'),
  abandon('ABANDON');

  const ChronicleNativeDashboardDeletionPolicy(this.terraformValue);
  @override
  final String terraformValue;
}

/// Filter data source for `filters.data_source`.
enum ChronicleNativeDashboardFilterDataSource implements TerraformEnum {
  udm('UDM'),
  entity('ENTITY'),
  ingestionMetrics('INGESTION_METRICS'),
  ruleDetections('RULE_DETECTIONS'),
  rulesets('RULESETS'),
  global('GLOBAL'),
  iocMatches('IOC_MATCHES'),
  rules('RULES'),
  soarCases('SOAR_CASES'),
  soarPlaybooks('SOAR_PLAYBOOKS'),
  soarCaseHistory('SOAR_CASE_HISTORY'),
  dataTable('DATA_TABLE'),
  investigation('INVESTIGATION'),
  investigationFeedback('INVESTIGATION_FEEDBACK');

  const ChronicleNativeDashboardFilterDataSource(this.terraformValue);
  @override
  final String terraformValue;
}

/// Filter operator for `filters.filter_operator_and_field_values.filter_operator`.
enum ChronicleNativeDashboardFilterOperator implements TerraformEnum {
  equal('EQUAL'),
  notEqual('NOT_EQUAL'),
  in_('IN'),
  greaterThan('GREATER_THAN'),
  greaterThanOrEqualTo('GREATER_THAN_OR_EQUAL_TO'),
  lessThan('LESS_THAN'),
  lessThanOrEqualTo('LESS_THAN_OR_EQUAL_TO'),
  between('BETWEEN'),
  past('PAST'),
  isNull('IS_NULL'),
  isNotNull('IS_NOT_NULL'),
  startsWith('STARTS_WITH'),
  endsWith('ENDS_WITH'),
  doesNotStartsWith('DOES_NOT_STARTS_WITH'),
  doesNotEndsWith('DOES_NOT_ENDS_WITH'),
  notIn('NOT_IN'),
  contains('CONTAINS'),
  doesNotContain('DOES_NOT_CONTAIN');

  const ChronicleNativeDashboardFilterOperator(this.terraformValue);
  @override
  final String terraformValue;
}

/// `filter_operator_and_field_values` entry on a dashboard filter.
@immutable
class ChronicleNativeDashboardFilterOperatorAndFieldValue {
  const ChronicleNativeDashboardFilterOperatorAndFieldValue({
    this.filterOperator,
    this.fieldValues,
  });

  final ChronicleNativeDashboardFilterOperator? filterOperator;
  final List<TfArg<String>>? fieldValues;

  Map<String, Object?> toArgMap() => {
    if (filterOperator != null)
      'filter_operator': filterOperator!.terraformValue,
    if (fieldValues != null)
      'field_values': fieldValues!.map((v) => v.toTfJson()).toList(),
  };
}

/// Global dashboard filter (`filters` block).
@immutable
class ChronicleNativeDashboardFilter {
  const ChronicleNativeDashboardFilter({
    this.displayName,
    this.dataSource,
    this.filterOperatorAndFieldValues,
  });

  final TfArg<String>? displayName;
  final ChronicleNativeDashboardFilterDataSource? dataSource;
  final List<ChronicleNativeDashboardFilterOperatorAndFieldValue>?
  filterOperatorAndFieldValues;

  Map<String, Object?> toArgMap() => {
    if (displayName != null) 'display_name': displayName!.toTfJson(),
    if (dataSource != null) 'data_source': dataSource!.terraformValue,
    if (filterOperatorAndFieldValues != null)
      'filter_operator_and_field_values': filterOperatorAndFieldValues!
          .map((v) => v.toArgMap())
          .toList(),
  };
}

/// Factory wrapper for `google_chronicle_native_dashboard`.
///
/// A configuration for a native dashboard within a Google SecOps (Chronicle)
/// instance.
///
/// Chronicle native dashboard (Google SecOps).
///
/// Enable `chronicle.googleapis.com` before apply. Use [ChronicleNativeDashboardFilter]
/// for `filters` blocks.
///
/// Pair with [GoogleChronicleDashboardChart] — charts reference [nameRef].
final class GoogleChronicleNativeDashboard extends Resource {
  static const String tfType = 'google_chronicle_native_dashboard';

  GoogleChronicleNativeDashboard({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<String> displayName,
    TfArg<String>? description,
    TfArg<ChronicleNativeDashboardAccess>? access,
    TfArg<ChronicleNativeDashboardType>? type,
    TfArg<bool>? isPinned,
    List<ChronicleNativeDashboardFilter>? filters,
    TfArg<List<Map<String, dynamic>>>? charts,
    TfArg<ChronicleNativeDashboardDeletionPolicy>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           'display_name': displayName,
           if (description != null) 'description': description,
           if (access != null) 'access': access,
           if (type != null) 'type': type,
           if (isPinned != null) 'is_pinned': isPinned,
           if (filters != null)
             'filters': TfArg.literal(
               filters.map((f) => f.toArgMap()).toList(),
             ),
           if (charts != null) 'charts': charts,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleNativeDashboardSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `create_user_id` attribute.
  TfRef<String> get createUserId =>
      TfRef.attribute<String>(this, 'create_user_id');

  /// Reference to `dashboard_id` attribute.
  TfRef<String> get dashboardId =>
      TfRef.attribute<String>(this, 'dashboard_id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `last_viewed_time` attribute.
  TfRef<String> get lastViewedTime =>
      TfRef.attribute<String>(this, 'last_viewed_time');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `update_user_id` attribute.
  TfRef<String> get updateUserId =>
      TfRef.attribute<String>(this, 'update_user_id');
}
