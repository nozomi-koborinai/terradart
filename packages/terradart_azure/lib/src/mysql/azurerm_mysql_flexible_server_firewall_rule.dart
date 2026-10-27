// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_mysql_flexible_server_firewall_rule`.
const Set<String> _azurermMysqlFlexibleServerFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_mysql_flexible_server_firewall_rule`.
final class AzurermMysqlFlexibleServerFirewallRule extends Resource {
  static const String tfType = 'azurerm_mysql_flexible_server_firewall_rule';

  AzurermMysqlFlexibleServerFirewallRule(
    super.localName, {
    required TfArg<String> endIpAddress,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required TfArg<String> serverName,
    required TfArg<String> startIpAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'end_ip_address': endIpAddress,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'server_name': serverName,
           'start_ip_address': startIpAddress,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMysqlFlexibleServerFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMysqlFlexibleServerFirewallRule>`.
  RefTo<AzurermMysqlFlexibleServerFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_ip_address` attribute.
  TfRef<String> get endIpAddress =>
      TfRef.attribute<String>(this, 'end_ip_address');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `server_name` attribute.
  TfRef<String> get serverName => TfRef.attribute<String>(this, 'server_name');

  /// Reference to `start_ip_address` attribute.
  TfRef<String> get startIpAddress =>
      TfRef.attribute<String>(this, 'start_ip_address');
}
