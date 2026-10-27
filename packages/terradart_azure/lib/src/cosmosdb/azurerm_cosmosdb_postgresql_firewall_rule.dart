// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_cosmosdb_postgresql_firewall_rule`.
const Set<String> _azurermCosmosdbPostgresqlFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_cosmosdb_postgresql_firewall_rule`.
final class AzurermCosmosdbPostgresqlFirewallRule extends Resource {
  static const String tfType = 'azurerm_cosmosdb_postgresql_firewall_rule';

  AzurermCosmosdbPostgresqlFirewallRule(
    super.localName, {
    required TfArg<String> clusterId,
    required TfArg<String> endIpAddress,
    required TfArg<String> name,
    required TfArg<String> startIpAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'cluster_id': clusterId,
           'end_ip_address': endIpAddress,
           'name': name,
           'start_ip_address': startIpAddress,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermCosmosdbPostgresqlFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermCosmosdbPostgresqlFirewallRule>`.
  RefTo<AzurermCosmosdbPostgresqlFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cluster_id` attribute.
  TfRef<String> get clusterId => TfRef.attribute<String>(this, 'cluster_id');

  /// Reference to `end_ip_address` attribute.
  TfRef<String> get endIpAddress =>
      TfRef.attribute<String>(this, 'end_ip_address');

  /// Reference to `start_ip_address` attribute.
  TfRef<String> get startIpAddress =>
      TfRef.attribute<String>(this, 'start_ip_address');
}
