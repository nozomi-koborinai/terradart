// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_horizondb_firewall_rule`.
const Set<String> _azurermHorizondbFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_horizondb_firewall_rule`.
final class AzurermHorizondbFirewallRule extends Resource {
  static const String tfType = 'azurerm_horizondb_firewall_rule';

  AzurermHorizondbFirewallRule(
    super.localName, {
    required TfArg<String> endIpAddress,
    required TfArg<String> horizondbPoolId,
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
           'horizondb_pool_id': horizondbPoolId,
           'name': name,
           'start_ip_address': startIpAddress,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermHorizondbFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermHorizondbFirewallRule>`.
  RefTo<AzurermHorizondbFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_ip_address` attribute.
  TfRef<String> get endIpAddress =>
      TfRef.attribute<String>(this, 'end_ip_address');

  /// Reference to `horizondb_pool_id` attribute.
  TfRef<String> get horizondbPoolId =>
      TfRef.attribute<String>(this, 'horizondb_pool_id');

  /// Reference to `start_ip_address` attribute.
  TfRef<String> get startIpAddress =>
      TfRef.attribute<String>(this, 'start_ip_address');
}
