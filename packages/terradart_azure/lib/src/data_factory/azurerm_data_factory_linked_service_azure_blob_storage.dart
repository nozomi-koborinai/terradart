// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_blob_storage`.
const Set<String> _azurermDataFactoryLinkedServiceAzureBlobStorageSensitive =
    <String>{'connection_string', 'sas_uri', 'service_endpoint'};

/// Typed helper for the `sas_token_linked_key_vault_key` block of
/// `azurerm_data_factory_linked_service_azure_blob_storage` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey {
  const DataFactoryLinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey({
    required this.linkedServiceName,
    required this.secretName,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Typed helper for the `service_principal_linked_key_vault_key` block of
/// `azurerm_data_factory_linked_service_azure_blob_storage` (derived from provider schema).
@immutable
final class DataFactoryLinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey {
  const DataFactoryLinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey({
    required this.linkedServiceName,
    required this.secretName,
  });

  final TfArg<String> linkedServiceName;

  final TfArg<String> secretName;

  @internal
  Map<String, Object?> encode() => {
    'linked_service_name': linkedServiceName.toTfJson(),
    'secret_name': secretName.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_data_factory_linked_service_azure_blob_storage`.
final class AzurermDataFactoryLinkedServiceAzureBlobStorage extends Resource {
  static const String tfType =
      'azurerm_data_factory_linked_service_azure_blob_storage';

  AzurermDataFactoryLinkedServiceAzureBlobStorage(
    super.localName, {
    TfArg<Map<String, String>>? additionalProperties,
    TfArg<List<String>>? annotations,
    Sensitive<String>? connectionString,
    TfArg<String>? connectionStringInsecure,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    Sensitive<String>? sasUri,
    Sensitive<String>? serviceEndpoint,
    TfArg<String>? servicePrincipalId,
    TfArg<String>? servicePrincipalKey,
    TfArg<String>? storageKind,
    TfArg<String>? tenantId,
    TfArg<bool>? useManagedIdentity,
    DataFactoryLinkedServiceAzureBlobStorageSasTokenLinkedKeyVaultKey?
    sasTokenLinkedKeyVaultKey,
    DataFactoryLinkedServiceAzureBlobStorageServicePrincipalLinkedKeyVaultKey?
    servicePrincipalLinkedKeyVaultKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'additional_properties': ?additionalProperties,
           'annotations': ?annotations,
           'connection_string': ?connectionString,
           'connection_string_insecure': ?connectionStringInsecure,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           'sas_uri': ?sasUri,
           'service_endpoint': ?serviceEndpoint,
           'service_principal_id': ?servicePrincipalId,
           'service_principal_key': ?servicePrincipalKey,
           'storage_kind': ?storageKind,
           'tenant_id': ?tenantId,
           'use_managed_identity': ?useManagedIdentity,
           if (sasTokenLinkedKeyVaultKey != null)
             'sas_token_linked_key_vault_key': TfArg.literal(
               sasTokenLinkedKeyVaultKey.encode(),
             ),
           if (servicePrincipalLinkedKeyVaultKey != null)
             'service_principal_linked_key_vault_key': TfArg.literal(
               servicePrincipalLinkedKeyVaultKey.encode(),
             ),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermDataFactoryLinkedServiceAzureBlobStorageSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermDataFactoryLinkedServiceAzureBlobStorage>`.
  RefTo<AzurermDataFactoryLinkedServiceAzureBlobStorage> get ref =>
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

  /// Reference to `connection_string_insecure` attribute.
  TfRef<String> get connectionStringInsecure =>
      TfRef.attribute<String>(this, 'connection_string_insecure');

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

  /// Reference to `sas_uri` attribute.
  TfRef<String> get sasUri => TfRef.attribute<String>(this, 'sas_uri');

  /// Reference to `service_endpoint` attribute.
  TfRef<String> get serviceEndpoint =>
      TfRef.attribute<String>(this, 'service_endpoint');

  /// Reference to `service_principal_id` attribute.
  TfRef<String> get servicePrincipalId =>
      TfRef.attribute<String>(this, 'service_principal_id');

  /// Reference to `service_principal_key` attribute.
  TfRef<String> get servicePrincipalKey =>
      TfRef.attribute<String>(this, 'service_principal_key');

  /// Reference to `storage_kind` attribute.
  TfRef<String> get storageKind =>
      TfRef.attribute<String>(this, 'storage_kind');

  /// Reference to `tenant_id` attribute.
  TfRef<String> get tenantId => TfRef.attribute<String>(this, 'tenant_id');

  /// Reference to `use_managed_identity` attribute.
  TfRef<bool> get useManagedIdentity =>
      TfRef.attribute<bool>(this, 'use_managed_identity');
}
