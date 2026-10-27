// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_network_manager_verifier_workspace`.
const Set<String> _azurermNetworkManagerVerifierWorkspaceSensitive = <String>{};

/// Factory wrapper for `azurerm_network_manager_verifier_workspace`.
final class AzurermNetworkManagerVerifierWorkspace extends Resource {
  static const String tfType = 'azurerm_network_manager_verifier_workspace';

  AzurermNetworkManagerVerifierWorkspace(
    super.localName, {
    TfArg<String>? description,
    required TfArg<String> location,
    required TfArg<String> name,
    required TfArg<String> networkManagerId,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'description': ?description,
           'location': location,
           'name': name,
           'network_manager_id': networkManagerId,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermNetworkManagerVerifierWorkspaceSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetworkManagerVerifierWorkspace>`.
  RefTo<AzurermNetworkManagerVerifierWorkspace> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_manager_id` attribute.
  TfRef<String> get networkManagerId =>
      TfRef.attribute<String>(this, 'network_manager_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
