// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mysql_flexible_server_configuration`.
const Set<String> _azurermMysqlFlexibleServerConfigurationSensitive =
    <String>{};

/// Factory wrapper for `azurerm_mysql_flexible_server_configuration`.
final class AzurermMysqlFlexibleServerConfiguration extends Resource {
  static const String tfType = 'azurerm_mysql_flexible_server_configuration';

  AzurermMysqlFlexibleServerConfiguration(
    super.localName, {
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serverName,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_name': serverName,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMysqlFlexibleServerConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMysqlFlexibleServerConfiguration>`.
  RefTo<AzurermMysqlFlexibleServerConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
