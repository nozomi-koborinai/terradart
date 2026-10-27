// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mssql_outbound_firewall_rule`.
const Set<String> _azurermMssqlOutboundFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_mssql_outbound_firewall_rule`.
final class AzurermMssqlOutboundFirewallRule extends Resource {
  static const String tfType = 'azurerm_mssql_outbound_firewall_rule';

  AzurermMssqlOutboundFirewallRule(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> serverId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'server_id': serverId},
       );

  @override
  Set<String> get sensitiveFields => _azurermMssqlOutboundFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMssqlOutboundFirewallRule>`.
  RefTo<AzurermMssqlOutboundFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');
}
