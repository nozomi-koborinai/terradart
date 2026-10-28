// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_data_factory_linked_service_azure_blob_storage`.
const Set<String> _azurermDataFactoryLinkedServiceAzureBlobStorageSensitive =
    <String>{'connection_string', 'sas_uri', 'service_endpoint'};

/// Data Factory Linked Service Azure Blob Storage enum for `storage_kind`.
extension type const DataFactoryLinkedServiceAzureBlobStorageKind._(
  TfArg<String> _
) implements TfArg<String> {
  DataFactoryLinkedServiceAzureBlobStorageKind.variable(String name)
    : this._(TfArg.variable(name));
  DataFactoryLinkedServiceAzureBlobStorageKind.expression(String template)
    : this._(TfArg.expression(template));
  const DataFactoryLinkedServiceAzureBlobStorageKind.arg(TfArg<String> arg)
    : this._(arg);

  static const storage = DataFactoryLinkedServiceAzureBlobStorageKind._(
    TfArgLiteral('Storage'),
  );
  static const storagev2 = DataFactoryLinkedServiceAzureBlobStorageKind._(
    TfArgLiteral('StorageV2'),
  );
  static const blobstorage = DataFactoryLinkedServiceAzureBlobStorageKind._(
    TfArgLiteral('BlobStorage'),
  );
  static const blockblobstorage =
      DataFactoryLinkedServiceAzureBlobStorageKind._(
        TfArgLiteral('BlockBlobStorage'),
      );

  static const List<DataFactoryLinkedServiceAzureBlobStorageKind> values = [
    storage,
    storagev2,
    blobstorage,
    blockblobstorage,
  ];
}

/// Exactly one of `connection_string`, `connection_string_insecure`, `sas_uri`, `service_endpoint` on `azurerm_data_factory_linked_service_azure_blob_storage`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.connectionString(...)`.
sealed class DataFactoryLinkedServiceAzureBlobStorageConnection {
  const DataFactoryLinkedServiceAzureBlobStorageConnection();

  /// Sets `connection_string`.
  const factory DataFactoryLinkedServiceAzureBlobStorageConnection.connectionString(
    Sensitive<String> connectionString,
  ) = DataFactoryLinkedServiceAzureBlobStorageConnectionString;

  /// Sets `connection_string_insecure`.
  const factory DataFactoryLinkedServiceAzureBlobStorageConnection.connectionStringInsecure(
    TfArg<String> connectionStringInsecure,
  ) = DataFactoryLinkedServiceAzureBlobStorageConnectionStringInsecure;

  /// Sets `sas_uri`.
  const factory DataFactoryLinkedServiceAzureBlobStorageConnection.sasUri(
    Sensitive<String> sasUri,
  ) = DataFactoryLinkedServiceAzureBlobStorageConnectionSasUri;

  /// Sets `service_endpoint`.
  const factory DataFactoryLinkedServiceAzureBlobStorageConnection.serviceEndpoint(
    Sensitive<String> serviceEndpoint,
  ) = DataFactoryLinkedServiceAzureBlobStorageConnectionServiceEndpoint;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataFactoryLinkedServiceAzureBlobStorageConnection.connectionString] choice: sets `connection_string`.
final class DataFactoryLinkedServiceAzureBlobStorageConnectionString
    extends DataFactoryLinkedServiceAzureBlobStorageConnection {
  const DataFactoryLinkedServiceAzureBlobStorageConnectionString(
    this.connectionString,
  );

  final Sensitive<String> connectionString;

  @internal
  @override
  String get blockKey => 'connection_string';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connection_string': connectionString.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'connection_string': connectionString,
  };
}

/// The [DataFactoryLinkedServiceAzureBlobStorageConnection.connectionStringInsecure] choice: sets `connection_string_insecure`.
final class DataFactoryLinkedServiceAzureBlobStorageConnectionStringInsecure
    extends DataFactoryLinkedServiceAzureBlobStorageConnection {
  const DataFactoryLinkedServiceAzureBlobStorageConnectionStringInsecure(
    this.connectionStringInsecure,
  );

  final TfArg<String> connectionStringInsecure;

  @internal
  @override
  String get blockKey => 'connection_string_insecure';

  @internal
  @override
  Map<String, Object?> encode() => {
    'connection_string_insecure': connectionStringInsecure.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'connection_string_insecure': connectionStringInsecure,
  };
}

/// The [DataFactoryLinkedServiceAzureBlobStorageConnection.sasUri] choice: sets `sas_uri`.
final class DataFactoryLinkedServiceAzureBlobStorageConnectionSasUri
    extends DataFactoryLinkedServiceAzureBlobStorageConnection {
  const DataFactoryLinkedServiceAzureBlobStorageConnectionSasUri(this.sasUri);

  final Sensitive<String> sasUri;

  @internal
  @override
  String get blockKey => 'sas_uri';

  @internal
  @override
  Map<String, Object?> encode() => {'sas_uri': sasUri.toTfJson()};

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {'sas_uri': sasUri};
}

/// The [DataFactoryLinkedServiceAzureBlobStorageConnection.serviceEndpoint] choice: sets `service_endpoint`.
final class DataFactoryLinkedServiceAzureBlobStorageConnectionServiceEndpoint
    extends DataFactoryLinkedServiceAzureBlobStorageConnection {
  const DataFactoryLinkedServiceAzureBlobStorageConnectionServiceEndpoint(
    this.serviceEndpoint,
  );

  final Sensitive<String> serviceEndpoint;

  @internal
  @override
  String get blockKey => 'service_endpoint';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_endpoint': serviceEndpoint.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_endpoint': serviceEndpoint,
  };
}

/// At most one of `service_principal_id`, `use_managed_identity` on `azurerm_data_factory_linked_service_azure_blob_storage`: the provider rejects
/// more than one, so each variant sets one of them and a
/// null choice sets none.
///
/// Pick one with a dot shorthand: `.servicePrincipalId(...)`.
sealed class DataFactoryLinkedServiceAzureBlobStorageAuthentication {
  const DataFactoryLinkedServiceAzureBlobStorageAuthentication();

  /// Sets `service_principal_id`.
  const factory DataFactoryLinkedServiceAzureBlobStorageAuthentication.servicePrincipalId(
    TfArg<String> servicePrincipalId,
  ) = DataFactoryLinkedServiceAzureBlobStorageAuthenticationServicePrincipalId;

  /// Sets `use_managed_identity`.
  const factory DataFactoryLinkedServiceAzureBlobStorageAuthentication.useManagedIdentity(
    TfArg<bool> useManagedIdentity,
  ) = DataFactoryLinkedServiceAzureBlobStorageAuthenticationUseManagedIdentity;

  /// The Terraform argument this choice sets.
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [DataFactoryLinkedServiceAzureBlobStorageAuthentication.servicePrincipalId] choice: sets `service_principal_id`.
final class DataFactoryLinkedServiceAzureBlobStorageAuthenticationServicePrincipalId
    extends DataFactoryLinkedServiceAzureBlobStorageAuthentication {
  const DataFactoryLinkedServiceAzureBlobStorageAuthenticationServicePrincipalId(
    this.servicePrincipalId,
  );

  final TfArg<String> servicePrincipalId;

  @internal
  @override
  String get blockKey => 'service_principal_id';

  @internal
  @override
  Map<String, Object?> encode() => {
    'service_principal_id': servicePrincipalId.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'service_principal_id': servicePrincipalId,
  };
}

/// The [DataFactoryLinkedServiceAzureBlobStorageAuthentication.useManagedIdentity] choice: sets `use_managed_identity`.
final class DataFactoryLinkedServiceAzureBlobStorageAuthenticationUseManagedIdentity
    extends DataFactoryLinkedServiceAzureBlobStorageAuthentication {
  const DataFactoryLinkedServiceAzureBlobStorageAuthenticationUseManagedIdentity(
    this.useManagedIdentity,
  );

  final TfArg<bool> useManagedIdentity;

  @internal
  @override
  String get blockKey => 'use_managed_identity';

  @internal
  @override
  Map<String, Object?> encode() => {
    'use_managed_identity': useManagedIdentity.toTfJson(),
  };

  @internal
  @override
  Map<String, TfArg<Object?>> get argMap => {
    'use_managed_identity': useManagedIdentity,
  };
}

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
    required DataFactoryLinkedServiceAzureBlobStorageConnection connection,
    required TfArg<String> dataFactoryId,
    TfArg<String>? description,
    TfArg<String>? integrationRuntimeName,
    required TfArg<String> name,
    TfArg<Map<String, String>>? parameters,
    DataFactoryLinkedServiceAzureBlobStorageAuthentication? authentication,
    TfArg<String>? servicePrincipalKey,
    DataFactoryLinkedServiceAzureBlobStorageKind? storageKind,
    TfArg<String>? tenantId,
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
           ...connection.argMap,
           'data_factory_id': dataFactoryId,
           'description': ?description,
           'integration_runtime_name': ?integrationRuntimeName,
           'name': name,
           'parameters': ?parameters,
           ...?authentication?.argMap,
           'service_principal_key': ?servicePrincipalKey,
           'storage_kind': ?storageKind,
           'tenant_id': ?tenantId,
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
