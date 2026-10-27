// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_log_analytics_workspace_table_custom_log`.
const Set<String> _azurermLogAnalyticsWorkspaceTableCustomLogSensitive =
    <String>{};

/// Log Analytics Workspace Table Custom Log enum for `plan`.
extension type const LogAnalyticsWorkspaceTableCustomLogPlan._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsWorkspaceTableCustomLogPlan.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceTableCustomLogPlan.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceTableCustomLogPlan.arg(TfArg<String> arg)
    : this._(arg);

  static const analytics = LogAnalyticsWorkspaceTableCustomLogPlan._(
    TfArgLiteral('Analytics'),
  );
  static const basic = LogAnalyticsWorkspaceTableCustomLogPlan._(
    TfArgLiteral('Basic'),
  );

  static const List<LogAnalyticsWorkspaceTableCustomLogPlan> values = [
    analytics,
    basic,
  ];
}

/// Typed helper for the `column` block of
/// `azurerm_log_analytics_workspace_table_custom_log` (derived from provider schema).
@immutable
final class LogAnalyticsWorkspaceTableCustomLogColumn {
  const LogAnalyticsWorkspaceTableCustomLogColumn({
    this.description,
    this.displayName,
    required this.name,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<String>? displayName;

  final TfArg<String> name;

  final LogAnalyticsWorkspaceTableCustomLogType type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LogAnalyticsWorkspaceTableCustomLogType._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsWorkspaceTableCustomLogType.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceTableCustomLogType.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceTableCustomLogType.arg(TfArg<String> arg)
    : this._(arg);

  static const boolean = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('boolean'),
  );
  static const datetime = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('dateTime'),
  );
  static const dynamic = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('dynamic'),
  );
  static const guid = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('guid'),
  );
  static const int = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('int'),
  );
  static const long = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('long'),
  );
  static const real = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('real'),
  );
  static const string = LogAnalyticsWorkspaceTableCustomLogType._(
    TfArgLiteral('string'),
  );

  static const List<LogAnalyticsWorkspaceTableCustomLogType> values = [
    boolean,
    datetime,
    dynamic,
    guid,
    int,
    long,
    real,
    string,
  ];
}

/// Factory wrapper for `azurerm_log_analytics_workspace_table_custom_log`.
final class AzurermLogAnalyticsWorkspaceTableCustomLog extends Resource {
  static const String tfType =
      'azurerm_log_analytics_workspace_table_custom_log';

  AzurermLogAnalyticsWorkspaceTableCustomLog(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> name,
    LogAnalyticsWorkspaceTableCustomLogPlan? plan,
    TfArg<num>? retentionInDays,
    TfArg<num>? totalRetentionInDays,
    required TfArg<String> workspaceId,
    required List<LogAnalyticsWorkspaceTableCustomLogColumn> column,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': ?displayName,
           'name': name,
           'plan': ?plan,
           'retention_in_days': ?retentionInDays,
           'total_retention_in_days': ?totalRetentionInDays,
           'workspace_id': workspaceId,
           'column': TfArg.literal([for (final e in column) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsWorkspaceTableCustomLogSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsWorkspaceTableCustomLog>`.
  RefTo<AzurermLogAnalyticsWorkspaceTableCustomLog> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `solutions` attribute.
  TfRef<List<String>> get solutions =>
      TfRef.attribute<List<String>>(this, 'solutions');

  /// Reference to `standard_column` attribute.
  TfRef<List<Map<String, Object?>>> get standardColumn =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'standard_column');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `display_name` attribute.
  TfRef<String> get displayName =>
      TfRef.attribute<String>(this, 'display_name');

  /// Reference to `plan` attribute.
  TfRef<String> get plan => TfRef.attribute<String>(this, 'plan');

  /// Reference to `retention_in_days` attribute.
  TfRef<num> get retentionInDays =>
      TfRef.attribute<num>(this, 'retention_in_days');

  /// Reference to `total_retention_in_days` attribute.
  TfRef<num> get totalRetentionInDays =>
      TfRef.attribute<num>(this, 'total_retention_in_days');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
