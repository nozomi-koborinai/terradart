// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_private_link_scope`.
const Set<String> _azurermMonitorPrivateLinkScopeSensitive = <String>{};

/// Monitor Private Link Scope Ingestion Access enum for `ingestion_access_mode`.
extension type const MonitorPrivateLinkScopeIngestionAccessMode._(
  TfArg<String> _
) implements TfArg<String> {
  MonitorPrivateLinkScopeIngestionAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  MonitorPrivateLinkScopeIngestionAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorPrivateLinkScopeIngestionAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const open = MonitorPrivateLinkScopeIngestionAccessMode._(
    TfArgLiteral('Open'),
  );
  static const privateonly = MonitorPrivateLinkScopeIngestionAccessMode._(
    TfArgLiteral('PrivateOnly'),
  );

  static const List<MonitorPrivateLinkScopeIngestionAccessMode> values = [
    open,
    privateonly,
  ];
}

/// Monitor Private Link Scope Query Access enum for `query_access_mode`.
extension type const MonitorPrivateLinkScopeQueryAccessMode._(TfArg<String> _)
    implements TfArg<String> {
  MonitorPrivateLinkScopeQueryAccessMode.variable(String name)
    : this._(TfArg.variable(name));
  MonitorPrivateLinkScopeQueryAccessMode.expression(String template)
    : this._(TfArg.expression(template));
  const MonitorPrivateLinkScopeQueryAccessMode.arg(TfArg<String> arg)
    : this._(arg);

  static const open = MonitorPrivateLinkScopeQueryAccessMode._(
    TfArgLiteral('Open'),
  );
  static const privateonly = MonitorPrivateLinkScopeQueryAccessMode._(
    TfArgLiteral('PrivateOnly'),
  );

  static const List<MonitorPrivateLinkScopeQueryAccessMode> values = [
    open,
    privateonly,
  ];
}

/// Factory wrapper for `azurerm_monitor_private_link_scope`.
final class AzurermMonitorPrivateLinkScope extends Resource {
  static const String tfType = 'azurerm_monitor_private_link_scope';

  AzurermMonitorPrivateLinkScope(
    super.localName, {
    MonitorPrivateLinkScopeIngestionAccessMode? ingestionAccessMode,
    required TfArg<String> name,
    MonitorPrivateLinkScopeQueryAccessMode? queryAccessMode,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'ingestion_access_mode': ?ingestionAccessMode,
           'name': name,
           'query_access_mode': ?queryAccessMode,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMonitorPrivateLinkScopeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorPrivateLinkScope>`.
  RefTo<AzurermMonitorPrivateLinkScope> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `ingestion_access_mode` attribute.
  TfRef<String> get ingestionAccessMode =>
      TfRef.attribute<String>(this, 'ingestion_access_mode');

  /// Reference to `query_access_mode` attribute.
  TfRef<String> get queryAccessMode =>
      TfRef.attribute<String>(this, 'query_access_mode');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
