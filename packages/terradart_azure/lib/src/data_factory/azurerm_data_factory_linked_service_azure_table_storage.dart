// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_table_storage`.
const Set<String> _azurermDataFactoryLinkedServiceAzureTableStorageSensitive =
    <String>{'connection_string'};

/// Factory wrapper for `azurerm_data_factory_linked_service_azure_table_storage`.
final class AzurermDataFactoryLinkedServiceAzureTableStorage extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_azure_table_storage';

  AzurermDataFactoryLinkedServiceAzureTableStorage(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    required Sensitive<String> connectionString,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
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
           'connection_string': connectionString,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceAzureTableStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceAzureTableStorage>`.
  RefTo<AzurermDataFactoryLinkedServiceAzureTableStorage> get ref =>
      RefTo.of(this);

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

  /// Reference to `connection_string` attribute.
  TfRef<String> get connectionString =>
      TfRef.attribute<String>(this, 'connection_string');

  /// Reference to `data_factory_id` attribute.
  TfRef<String> get dataFactoryId =>
      TfRef.attribute<String>(this, 'data_factory_id');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `integration_runtime_name` attribute.
  TfRef<String> get integrationRuntimeName =>
      TfRef.attribute<String>(this, 'integration_runtime_name');

  /// Reference to `parameters` attribute.
  TfRef<Map<String, String>> get parameters =>
      TfRef.attribute<Map<String, String>>(this, 'parameters');
}
