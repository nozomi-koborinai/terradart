// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_machine_learning_workspace_network_outbound_rule_fqdn`.
const Set<String>
_azurermMachineLearningWorkspaceNetworkOutboundRuleFqdnSensitive = <String>{};

/// Factory wrapper for `azurerm_machine_learning_workspace_network_outbound_rule_fqdn`.
final class AzurermMachineLearningWorkspaceNetworkOutboundRuleFqdn
    extends Resource {
  static const String tfType =
      'azurerm_machine_learning_workspace_network_outbound_rule_fqdn';

  AzurermMachineLearningWorkspaceNetworkOutboundRuleFqdn(
    super.localName, {
    required TfArg<String> destinationFqdn,
    required TfArg<String> name,
    required TfArg<String> workspaceId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_fqdn': destinationFqdn,
           'name': name,
           'workspace_id': workspaceId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermMachineLearningWorkspaceNetworkOutboundRuleFqdnSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermMachineLearningWorkspaceNetworkOutboundRuleFqdn>`.
  RefTo<AzurermMachineLearningWorkspaceNetworkOutboundRuleFqdn> get ref =>
      RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `destination_fqdn` attribute.
  TfRef<String> get destinationFqdn =>
      TfRef.attribute<String>(this, 'destination_fqdn');

  /// Reference to `workspace_id` attribute.
  TfRef<String> get workspaceId =>
      TfRef.attribute<String>(this, 'workspace_id');
}
