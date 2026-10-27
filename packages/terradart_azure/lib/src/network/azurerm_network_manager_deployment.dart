// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_deployment`.
const Set<String> _azurermNetworkManagerDeploymentSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager_deployment`.
final class AzurermNetworkManagerDeployment extends Resource {
  static const String tfType = 'azurerm_network_manager_deployment';

  AzurermNetworkManagerDeployment(
    super.localName, {
    required TfArg<List<String>> configurationIds,
    required TfArg<String> location,
    required TfArg<String> networkManagerId,
    required TfArg<String> scopeAccess,
    TfArg<Map<String, String>>? triggers,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'configuration_ids': configurationIds,
           'location': location,
           'network_manager_id': networkManagerId,
           'scope_access': scopeAccess,
           'triggers': ?triggers,
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetworkManagerDeploymentSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerDeployment>`.
  RefTo<AzurermNetworkManagerDeployment> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `configuration_ids` attribute.
  TfRef<List<String>> get configurationIds =>
      TfRef.attribute<List<String>>(this, 'configuration_ids');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');

  /// Reference to `scope_access` attribute.
  TfRef<String> get scopeAccess =>
      TfRef.attribute<String>(this, 'scope_access');

  /// Reference to `triggers` attribute.
  TfRef<Map<String, String>> get triggers =>
      TfRef.attribute<Map<String, String>>(this, 'triggers');
}
