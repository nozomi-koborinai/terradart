// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_postgresql_flexible_server_firewall_rule`.
const Set<String> _azurermPostgresqlFlexibleServerFirewallRuleSensitive =
    <String>{};

/// Factory wrapper for `azurerm_postgresql_flexible_server_firewall_rule`.
final class AzurermPostgresqlFlexibleServerFirewallRule extends Resource {
  static const String tfType =
      'azurerm_postgresql_flexible_server_firewall_rule';

  AzurermPostgresqlFlexibleServerFirewallRule(
    super.localName, {
    required TfArg<String> endIpAddress,
    required TfArg<String> name,
    required TfArg<String> serverId,
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
           'server_id': serverId,
           'start_ip_address': startIpAddress,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermPostgresqlFlexibleServerFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermPostgresqlFlexibleServerFirewallRule>`.
  RefTo<AzurermPostgresqlFlexibleServerFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_ip_address` attribute.
  TfRef<String> get endIpAddress =>
      TfRef.attribute<String>(this, 'end_ip_address');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `start_ip_address` attribute.
  TfRef<String> get startIpAddress =>
      TfRef.attribute<String>(this, 'start_ip_address');
}
