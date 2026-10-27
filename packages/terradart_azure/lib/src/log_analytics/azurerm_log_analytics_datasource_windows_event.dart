// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_log_analytics_datasource_windows_event`.
const Set<String> _azurermLogAnalyticsDatasourceWindowsEventSensitive =
    <String>{};

/// Log Analytics Datasource Windows Event enum for `event_types`.
extension type const LogAnalyticsDatasourceWindowsEventTypes._(TfArg<String> _)
    implements TfArg<String> {
  LogAnalyticsDatasourceWindowsEventTypes.variable(String name)
    : this._(TfArg.variable(name));
  LogAnalyticsDatasourceWindowsEventTypes.expression(String template)
    : this._(TfArg.expression(template));
  const LogAnalyticsDatasourceWindowsEventTypes.arg(TfArg<String> arg)
    : this._(arg);

  static const error = LogAnalyticsDatasourceWindowsEventTypes._(
    TfArgLiteral('Error'),
  );
  static const warning = LogAnalyticsDatasourceWindowsEventTypes._(
    TfArgLiteral('Warning'),
  );
  static const information = LogAnalyticsDatasourceWindowsEventTypes._(
    TfArgLiteral('Information'),
  );

  static const List<LogAnalyticsDatasourceWindowsEventTypes> values = [
    error,
    warning,
    information,
  ];
}

/// Factory wrapper for `azurerm_log_analytics_datasource_windows_event`.
final class AzurermLogAnalyticsDatasourceWindowsEvent extends Resource {
  static const String tfType = 'azurerm_log_analytics_datasource_windows_event';

  AzurermLogAnalyticsDatasourceWindowsEvent(
    super.localName, {
    required TfArg<String> eventLogName,
    required List<LogAnalyticsDatasourceWindowsEventTypes> eventTypes,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> workspaceName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'event_log_name': eventLogName,
           'event_types': TfArg.literal([
             for (final e in eventTypes) e.toTfJson(),
           ]),
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'workspace_name': workspaceName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermLogAnalyticsDatasourceWindowsEventSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermLogAnalyticsDatasourceWindowsEvent>`.
  RefTo<AzurermLogAnalyticsDatasourceWindowsEvent> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `event_log_name` attribute.
  TfRef<String> get eventLogName =>
      TfRef.attribute<String>(this, 'event_log_name');

  /// Reference to `event_types` attribute.
  TfRef<List<String>> get eventTypes =>
      TfRef.attribute<List<String>>(this, 'event_types');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `workspace_name` attribute.
  TfRef<String> get workspaceName =>
      TfRef.attribute<String>(this, 'workspace_name');
}
