// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_monitor_private_link_scoped_service`.
const Set<String> _azurermMonitorPrivateLinkScopedServiceSensitive = <String>{};

/// Factory wrapper for `azurerm_monitor_private_link_scoped_service`.
final class AzurermMonitorPrivateLinkScopedService extends Resource {
  static const String tfType = 'azurerm_monitor_private_link_scoped_service';

  AzurermMonitorPrivateLinkScopedService(
    super.localName, {
    required TfArg<String> linkedResourceId,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> scopeName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'linked_resource_id': linkedResourceId,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'scope_name': scopeName,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMonitorPrivateLinkScopedServiceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMonitorPrivateLinkScopedService>`.
  RefTo<AzurermMonitorPrivateLinkScopedService> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `linked_resource_id` attribute.
  TfRef<String> get linkedResourceId =>
      TfRef.attribute<String>(this, 'linked_resource_id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `scope_name` attribute.
  TfRef<String> get scopeName => TfRef.attribute<String>(this, 'scope_name');
}
