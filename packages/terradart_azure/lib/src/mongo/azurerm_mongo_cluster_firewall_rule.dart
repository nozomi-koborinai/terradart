// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_mongo_cluster_firewall_rule`.
const Set<String> _azurermMongoClusterFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_mongo_cluster_firewall_rule`.
final class AzurermMongoClusterFirewallRule extends Resource {
  static const String tfType = 'azurerm_mongo_cluster_firewall_rule';

  AzurermMongoClusterFirewallRule(
    super.localName, {
    required TfArg<String> endIpAddress,
    required TfArg<String> mongoClusterId,
    required TfArg<String> name,
    required TfArg<String> startIpAddress,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'end_ip_address': endIpAddress,
           'mongo_cluster_id': mongoClusterId,
           'name': name,
           'start_ip_address': startIpAddress,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermMongoClusterFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMongoClusterFirewallRule>`.
  RefTo<AzurermMongoClusterFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_ip_address` attribute.
  TfRef<String> get endIpAddress =>
      TfRef.attribute<String>(this, 'end_ip_address');

  /// Reference to `mongo_cluster_id` attribute.
  TfRef<String> get mongoClusterId =>
      TfRef.attribute<String>(this, 'mongo_cluster_id');

  /// Reference to `start_ip_address` attribute.
  TfRef<String> get startIpAddress =>
      TfRef.attribute<String>(this, 'start_ip_address');
}
