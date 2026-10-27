// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../key_vault/azurerm_key_vault.dart' show AzurermKeyVault;

/// Sensitive field paths for `azurerm_data_factory_linked_service_key_vault`.
const Set<String> _azurermDataFactoryLinkedServiceKeyVaultSensitive =
    <String>{};

/// Factory wrapper for `azurerm_data_factory_linked_service_key_vault`.
final class AzurermDataFactoryLinkedServiceKeyVault extends Resource {
  static const String tfType = 'azurerm_data_factory_linked_service_key_vault';

  AzurermDataFactoryLinkedServiceKeyVault(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required RefTo<AzurermKeyVault> keyVaultId,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'key_vault_id': keyVaultId.encodeAs('id'),
           'name': name,
           'parameters': ?parameters,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceKeyVaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceKeyVault>`.
  RefTo<AzurermDataFactoryLinkedServiceKeyVault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `additional_properties` attribute.
  TfRef<Map<String, String>> get additionalProperties =>
      TfRef.attribute<Map<String, String>>(this, 'additional_properties');

  /// Reference to `annotations` attribute.
  TfRef<List<String>> get annotations =>
      TfRef.attribute<List<String>>(this, 'annotations');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `key_vault_id` attribute.
  TfRef<String> get keyVaultId => TfRef.attribute<String>(this, 'key_vault_id');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');
}
