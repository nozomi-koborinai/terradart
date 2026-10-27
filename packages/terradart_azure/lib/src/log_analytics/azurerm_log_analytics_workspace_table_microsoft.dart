// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_log_analytics_workspace_table_microsoft`.
const Set<String> _azurermLogAnalyticsWorkspaceTableMicrosoftSensitive =
    <String>{};

/// Log Analytics Workspace Table Microsoft enum for `name`.
extension type const LogAnalyticsWorkspaceTableMicrosoftName._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsWorkspaceTableMicrosoftName.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceTableMicrosoftName.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceTableMicrosoftName.arg(TfArg<String> arg)
    : this._(arg);

  static const alert = LogAnalyticsWorkspaceTableMicrosoftName._(
    TfArgLiteral('Alert'),
  );
  static const appcentererror = LogAnalyticsWorkspaceTableMicrosoftName._(
    TfArgLiteral('AppCenterError'),
  );
  static const computergroup = LogAnalyticsWorkspaceTableMicrosoftName._(
    TfArgLiteral('ComputerGroup'),
  );
  static const insightsmetrics = LogAnalyticsWorkspaceTableMicrosoftName._(
    TfArgLiteral('InsightsMetrics'),
  );
  static const operation = LogAnalyticsWorkspaceTableMicrosoftName._(
    TfArgLiteral('Operation'),
  );
  static const usage = LogAnalyticsWorkspaceTableMicrosoftName._(
    TfArgLiteral('Usage'),
  );

  static const List<LogAnalyticsWorkspaceTableMicrosoftName> values = [
    alert,
    appcentererror,
    computergroup,
    insightsmetrics,
    operation,
    usage,
  ];
}

/// Typed helper for the `column` block of
/// `azurerm_log_analytics_workspace_table_microsoft` (derived from provider schema).
@immutable
final class LogAnalyticsWorkspaceTableMicrosoftColumn {
  const LogAnalyticsWorkspaceTableMicrosoftColumn({
    this.description,
    this.displayByDefault,
    this.displayName,
    this.hidden,
    required this.name,
    required this.type,
  });

  final TfArg<String>? description;

  final TfArg<bool>? displayByDefault;

  final TfArg<String>? displayName;

  final TfArg<bool>? hidden;

  final TfArg<String> name;

  final LogAnalyticsWorkspaceTableMicrosoftType type;

  @internal
  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'display_by_default': ?displayByDefault?.toTfJson(),
    'display_name': ?displayName?.toTfJson(),
    'hidden': ?hidden?.toTfJson(),
    'name': name.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const LogAnalyticsWorkspaceTableMicrosoftType._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsWorkspaceTableMicrosoftType.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsWorkspaceTableMicrosoftType.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsWorkspaceTableMicrosoftType.arg(TfArg<String> arg)
    : this._(arg);

  static const boolean = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('boolean'),
  );
  static const datetime = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('dateTime'),
  );
  static const dynamic = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('dynamic'),
  );
  static const guid = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('guid'),
  );
  static const int = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('int'),
  );
  static const long = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('long'),
  );
  static const real = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('real'),
  );
  static const string = LogAnalyticsWorkspaceTableMicrosoftType._(
    TfArgLiteral('string'),
  );

  static const List<LogAnalyticsWorkspaceTableMicrosoftType> values = [
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

/// Factory wrapper for `azurerm_log_analytics_workspace_table_microsoft`.
final class AzurermLogAnalyticsWorkspaceTableMicrosoft extends Resource {
  static const String tfType =
      'azurerm_log_analytics_workspace_table_microsoft';

  AzurermLogAnalyticsWorkspaceTableMicrosoft(
    super.localName, {
    TfArg<String>? description,
    TfArg<String>? displayName,
    TfArg<List<String>>? labels,
    required LogAnalyticsWorkspaceTableMicrosoftName name,
    TfArg<num>? retentionInDays,
    TfArg<num>? totalRetentionInDays,
    required TfArg<String> workspaceId,
    List<LogAnalyticsWorkspaceTableMicrosoftColumn>? column,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'display_name': ?displayName,
           'labels': ?labels,
           'name': name,
           'retention_in_days': ?retentionInDays,
           'total_retention_in_days': ?totalRetentionInDays,
           'workspace_id': workspaceId,
           if (column != null)
             'column': TfArg.literal([for (final e in column) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsWorkspaceTableMicrosoftSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsWorkspaceTableMicrosoft>`.
  RefTo<AzurermLogAnalyticsWorkspaceTableMicrosoft> get ref => RefTo.of(this);

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

  /// Reference to `labels` attribute.
  TfRef<List<String>> get labels =>
      TfRef.attribute<List<String>>(this, 'labels');

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
