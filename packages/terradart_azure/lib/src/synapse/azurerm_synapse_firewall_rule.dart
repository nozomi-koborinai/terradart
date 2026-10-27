// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_synapse_firewall_rule`.
const Set<String> _azurermSynapseFirewallRuleSensitive = <String>{};

/// Factory wrapper for `azurerm_synapse_firewall_rule`.
final class AzurermSynapseFirewallRule extends Resource {
  static const String tfType = 'azurerm_synapse_firewall_rule';

  AzurermSynapseFirewallRule(
    super.localName, {
    required TfArg<String> endIpAddress,
    required TfArg<String> name,
    required TfArg<String> startIpAddress,
    required TfArg<String> synapseWorkspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'end_ip_address': endIpAddress,
           'name': name,
           'start_ip_address': startIpAddress,
           'synapse_workspace_id': synapseWorkspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermSynapseFirewallRuleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSynapseFirewallRule>`.
  RefTo<AzurermSynapseFirewallRule> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `end_ip_address` attribute.
  TfRef<String> get endIpAddress =>
      TfRef.attribute<String>(this, 'end_ip_address');

  /// Reference to `start_ip_address` attribute.
  TfRef<String> get startIpAddress =>
      TfRef.attribute<String>(this, 'start_ip_address');

  /// Reference to `synapse_workspace_id` attribute.
  TfRef<String> get synapseWorkspaceId =>
      TfRef.attribute<String>(this, 'synapse_workspace_id');
}
