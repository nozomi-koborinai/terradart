// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `azurerm_search_service_datasource_blob`.
const Set<String> _azurermSearchServiceDatasourceBlobSensitive = <String>{
  'encryption_key.client_secret',
};

/// Typed helper for the `encryption_key` block of
/// `azurerm_search_service_datasource_blob` (derived from provider schema).
@immutable
final class SearchServiceDatasourceBlobEncryptionKey {
  const SearchServiceDatasourceBlobEncryptionKey({
    this.clientId,
    this.clientSecret,
    required this.keyVaultKeyId,
  });

  final TfArg<String>? clientId;

  final Sensitive<String>? clientSecret;

  final TfArg<String> keyVaultKeyId;

  @internal
  Map<String, Object?> encode() => {
    'client_id': ?clientId?.toTfJson(),
    'client_secret': ?clientSecret?.toTfJson(),
    'key_vault_key_id': keyVaultKeyId.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_search_service_datasource_blob`.
final class AzurermSearchServiceDatasourceBlob extends Resource {
  static const String tfType = 'azurerm_search_service_datasource_blob';

  AzurermSearchServiceDatasourceBlob(
    super.localName, {
    required TfArg<String> connectionStringWo,
    required TfArg<num> connectionStringWoVersion,
    required TfArg<String> containerName,
    TfArg<String>? containerQuery,
    TfArg<String>? description,
    required TfArg<String> name,
    required TfArg<String> searchServiceEndpoint,
    TfArg<String>? softDeleteColumnName,
    TfArg<String>? softDeleteMarkerValue,
    SearchServiceDatasourceBlobEncryptionKey? encryptionKey,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_string_wo': connectionStringWo,
           'connection_string_wo_version': connectionStringWoVersion,
           'container_name': containerName,
           'container_query': ?containerQuery,
           'description': ?description,
           'name': name,
           'search_service_endpoint': searchServiceEndpoint,
           'soft_delete_column_name': ?softDeleteColumnName,
           'soft_delete_marker_value': ?softDeleteMarkerValue,
           if (encryptionKey != null)
             'encryption_key': TfArg.literal(encryptionKey.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _azurermSearchServiceDatasourceBlobSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermSearchServiceDatasourceBlob>`.
  RefTo<AzurermSearchServiceDatasourceBlob> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `connection_string_wo_version` attribute.
  TfRef<num> get connectionStringWoVersion =>
      TfRef.attribute<num>(this, 'connection_string_wo_version');

  /// Reference to `container_name` attribute.
  TfRef<String> get containerName =>
      TfRef.attribute<String>(this, 'container_name');

  /// Reference to `container_query` attribute.
  TfRef<String> get containerQuery =>
      TfRef.attribute<String>(this, 'container_query');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `search_service_endpoint` attribute.
  TfRef<String> get searchServiceEndpoint =>
      TfRef.attribute<String>(this, 'search_service_endpoint');

  /// Reference to `soft_delete_column_name` attribute.
  TfRef<String> get softDeleteColumnName =>
      TfRef.attribute<String>(this, 'soft_delete_column_name');

  /// Reference to `soft_delete_marker_value` attribute.
  TfRef<String> get softDeleteMarkerValue =>
      TfRef.attribute<String>(this, 'soft_delete_marker_value');
}
