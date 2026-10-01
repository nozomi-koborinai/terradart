// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_chronicle_native_dashboard`.
const Set<String> _googleChronicleNativeDashboardSensitive = <String>{};

/// Dashboard visibility for `google_chronicle_native_dashboard.access`.
extension type const ChronicleNativeDashboardAccess._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleNativeDashboardAccess.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleNativeDashboardAccess.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleNativeDashboardAccess.arg(TfArg<String> arg) : this._(arg);

  static const dashboardPrivate = ChronicleNativeDashboardAccess._(
    TfArgLiteral('DASHBOARD_PRIVATE'),
  );
  static const dashboardPublic = ChronicleNativeDashboardAccess._(
    TfArgLiteral('DASHBOARD_PUBLIC'),
  );

  static const List<ChronicleNativeDashboardAccess> values = [
    dashboardPrivate,
    dashboardPublic,
  ];
}

/// Dashboard type for `google_chronicle_native_dashboard.type`.
extension type const ChronicleNativeDashboardType._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleNativeDashboardType.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleNativeDashboardType.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleNativeDashboardType.arg(TfArg<String> arg) : this._(arg);

  static const curated = ChronicleNativeDashboardType._(
    TfArgLiteral('CURATED'),
  );
  static const privateType = ChronicleNativeDashboardType._(
    TfArgLiteral('PRIVATE'),
  );
  static const publicType = ChronicleNativeDashboardType._(
    TfArgLiteral('PUBLIC'),
  );
  static const custom = ChronicleNativeDashboardType._(TfArgLiteral('CUSTOM'));
  static const marketplace = ChronicleNativeDashboardType._(
    TfArgLiteral('MARKETPLACE'),
  );

  static const List<ChronicleNativeDashboardType> values = [
    curated,
    privateType,
    publicType,
    custom,
    marketplace,
  ];
}

/// Terraform `deletion_policy` for Chronicle native dashboards.
extension type const ChronicleNativeDashboardDeletionPolicy._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleNativeDashboardDeletionPolicy.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleNativeDashboardDeletionPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleNativeDashboardDeletionPolicy.arg(TfArg<String> arg)
    : this._(arg);

  static const delete = ChronicleNativeDashboardDeletionPolicy._(
    TfArgLiteral('DELETE'),
  );
  static const prevent = ChronicleNativeDashboardDeletionPolicy._(
    TfArgLiteral('PREVENT'),
  );
  static const abandon = ChronicleNativeDashboardDeletionPolicy._(
    TfArgLiteral('ABANDON'),
  );

  static const List<ChronicleNativeDashboardDeletionPolicy> values = [
    delete,
    prevent,
    abandon,
  ];
}

/// Filter data source for `filters.data_source`.
extension type const ChronicleNativeDashboardFilterDataSource._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleNativeDashboardFilterDataSource.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleNativeDashboardFilterDataSource.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleNativeDashboardFilterDataSource.arg(TfArg<String> arg)
    : this._(arg);

  static const udm = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('UDM'),
  );
  static const entity = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('ENTITY'),
  );
  static const ingestionMetrics = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('INGESTION_METRICS'),
  );
  static const ruleDetections = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('RULE_DETECTIONS'),
  );
  static const rulesets = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('RULESETS'),
  );
  static const global = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('GLOBAL'),
  );
  static const iocMatches = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('IOC_MATCHES'),
  );
  static const rules = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('RULES'),
  );
  static const soarCases = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('SOAR_CASES'),
  );
  static const soarPlaybooks = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('SOAR_PLAYBOOKS'),
  );
  static const soarCaseHistory = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('SOAR_CASE_HISTORY'),
  );
  static const dataTable = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('DATA_TABLE'),
  );
  static const investigation = ChronicleNativeDashboardFilterDataSource._(
    TfArgLiteral('INVESTIGATION'),
  );
  static const investigationFeedback =
      ChronicleNativeDashboardFilterDataSource._(
        TfArgLiteral('INVESTIGATION_FEEDBACK'),
      );

  static const List<ChronicleNativeDashboardFilterDataSource> values = [
    udm,
    entity,
    ingestionMetrics,
    ruleDetections,
    rulesets,
    global,
    iocMatches,
    rules,
    soarCases,
    soarPlaybooks,
    soarCaseHistory,
    dataTable,
    investigation,
    investigationFeedback,
  ];
}

/// Filter operator for `filters.filter_operator_and_field_values.filter_operator`.
extension type const ChronicleNativeDashboardFilterOperator._(TfArg<String> _)
    implements TfArg<String> {
  ChronicleNativeDashboardFilterOperator.variable(String name)
    : this._(TfArg.variable(name));
  ChronicleNativeDashboardFilterOperator.expression(String template)
    : this._(TfArg.expression(template));
  const ChronicleNativeDashboardFilterOperator.arg(TfArg<String> arg)
    : this._(arg);

  static const equal = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('EQUAL'),
  );
  static const notEqual = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('NOT_EQUAL'),
  );
  static const in_ = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('IN'),
  );
  static const greaterThan = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('GREATER_THAN'),
  );
  static const greaterThanOrEqualTo = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('GREATER_THAN_OR_EQUAL_TO'),
  );
  static const lessThan = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('LESS_THAN'),
  );
  static const lessThanOrEqualTo = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('LESS_THAN_OR_EQUAL_TO'),
  );
  static const between = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('BETWEEN'),
  );
  static const past = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('PAST'),
  );
  static const isNull = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('IS_NULL'),
  );
  static const isNotNull = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('IS_NOT_NULL'),
  );
  static const startsWith = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('STARTS_WITH'),
  );
  static const endsWith = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('ENDS_WITH'),
  );
  static const doesNotStartsWith = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('DOES_NOT_STARTS_WITH'),
  );
  static const doesNotEndsWith = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('DOES_NOT_ENDS_WITH'),
  );
  static const notIn = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('NOT_IN'),
  );
  static const contains = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('CONTAINS'),
  );
  static const doesNotContain = ChronicleNativeDashboardFilterOperator._(
    TfArgLiteral('DOES_NOT_CONTAIN'),
  );

  static const List<ChronicleNativeDashboardFilterOperator> values = [
    equal,
    notEqual,
    in_,
    greaterThan,
    greaterThanOrEqualTo,
    lessThan,
    lessThanOrEqualTo,
    between,
    past,
    isNull,
    isNotNull,
    startsWith,
    endsWith,
    doesNotStartsWith,
    doesNotEndsWith,
    notIn,
    contains,
    doesNotContain,
  ];
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
    if (filterOperator != null) 'filter_operator': filterOperator!.toTfJson(),
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
    if (dataSource != null) 'data_source': dataSource!.toTfJson(),
    if (filterOperatorAndFieldValues != null)
      'filter_operator_and_field_values': filterOperatorAndFieldValues!
          .map((v) => v.toArgMap())
          .toList(),
  };
}

/// Typed helper for the `charts` block of
/// `google_chronicle_native_dashboard` (derived from provider schema).
@immutable
final class ChronicleNativeDashboardCharts {
  const ChronicleNativeDashboardCharts({
    this.dashboardChart,
    this.filtersIds,
    this.chartLayout,
  });

  final TfArg<String>? dashboardChart;

  final TfArg<List<String>>? filtersIds;

  final ChronicleNativeDashboardChartLayout? chartLayout;

  @internal
  Map<String, Object?> encode() => {
    'dashboard_chart': ?dashboardChart?.toTfJson(),
    'filters_ids': ?filtersIds?.toTfJson(),
    'chart_layout': ?chartLayout?.encode(),
  };
}

/// Typed helper for the `charts.chart_layout` block of
/// `google_chronicle_native_dashboard` (derived from provider schema).
@immutable
final class ChronicleNativeDashboardChartLayout {
  const ChronicleNativeDashboardChartLayout({
    required this.spanX,
    required this.spanY,
    this.startX,
    this.startY,
  });

  final TfArg<num> spanX;

  final TfArg<num> spanY;

  final TfArg<num>? startX;

  final TfArg<num>? startY;

  @internal
  Map<String, Object?> encode() => {
    'span_x': spanX.toTfJson(),
    'span_y': spanY.toTfJson(),
    'start_x': ?startX?.toTfJson(),
    'start_y': ?startY?.toTfJson(),
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
/// Pair with [GoogleChronicleDashboardChart] — charts reference [name].
final class GoogleChronicleNativeDashboard extends Resource {
  static const String tfType = 'google_chronicle_native_dashboard';

  GoogleChronicleNativeDashboard(
    super.localName, {
    required TfArg<String> location,
    required TfArg<String> instance,
    required TfArg<String> displayName,
    TfArg<String>? description,
    ChronicleNativeDashboardAccess? access,
    ChronicleNativeDashboardType? type,
    TfArg<bool>? isPinned,
    List<ChronicleNativeDashboardFilter>? filters,
    List<ChronicleNativeDashboardCharts>? charts,
    ChronicleNativeDashboardDeletionPolicy? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': location,
           'instance': instance,
           'display_name': displayName,
           'description': ?description,
           'access': ?access,
           'type': ?type,
           'is_pinned': ?isPinned,
           if (filters != null)
             'filters': TfArg.literal(
               filters.map((f) => f.toArgMap()).toList(),
             ),
           if (charts != null)
             'charts': TfArg.literal([for (final e in charts) e.encode()]),
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleChronicleNativeDashboardSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleChronicleNativeDashboard>`.
  RefTo<GoogleChronicleNativeDashboard> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `access` attribute.
  TfRef<String> get access => TfRef.attribute<String>(this, 'access');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `is_pinned` attribute.
  TfRef<bool> get isPinned => TfRef.attribute<bool>(this, 'is_pinned');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
