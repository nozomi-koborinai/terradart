// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../storage/azurerm_storage_account.dart';
import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_storage_account`.
const Set<String> _azurermStorageAccountSensitive = <String>{
  'primary_access_key',
  'primary_blob_connection_string',
  'primary_connection_string',
  'secondary_access_key',
  'secondary_blob_connection_string',
  'secondary_connection_string',
};

/// Factory wrapper for `azurerm_storage_account`.
final class DataAzurermStorageAccount extends Data {
  static const String tfType = 'azurerm_storage_account';

  DataAzurermStorageAccount(
    super.localName, {
    TfArg<String>? minTlsVersion,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'min_tls_version': ?minTlsVersion,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermStorageAccountSensitive;

  /// A reference to the `azurerm_storage_account` this data source reads, for
  /// arguments typed `RefTo<AzurermStorageAccount>`.
  RefTo<AzurermStorageAccount> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `access_tier` attribute.
  TfRef<String> get accessTier => TfRef.attribute<String>(this, 'access_tier');

  /// Reference to `account_kind` attribute.
  TfRef<String> get accountKind =>
      TfRef.attribute<String>(this, 'account_kind');

  /// Reference to `account_replication_type` attribute.
  TfRef<String> get accountReplicationType =>
      TfRef.attribute<String>(this, 'account_replication_type');

  /// Reference to `account_tier` attribute.
  TfRef<String> get accountTier =>
      TfRef.attribute<String>(this, 'account_tier');

  /// Reference to `allow_nested_items_to_be_public` attribute.
  TfRef<bool> get allowNestedItemsToBePublic =>
      TfRef.attribute<bool>(this, 'allow_nested_items_to_be_public');

  /// Reference to `azure_files_authentication` attribute.
  TfRef<List<Map<String, Object?>>> get azureFilesAuthentication =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'azure_files_authentication',
      );

  /// Reference to `custom_domain` attribute.
  TfRef<List<Map<String, Object?>>> get customDomain =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'custom_domain');

  /// Reference to `dns_endpoint_type` attribute.
  TfRef<String> get dnsEndpointType =>
      TfRef.attribute<String>(this, 'dns_endpoint_type');

  /// Reference to `https_traffic_only_enabled` attribute.
  TfRef<bool> get httpsTrafficOnlyEnabled =>
      TfRef.attribute<bool>(this, 'https_traffic_only_enabled');

  /// Reference to `identity` attribute.
  TfRef<List<Map<String, Object?>>> get identity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'identity');

  /// Reference to `infrastructure_encryption_enabled` attribute.
  TfRef<bool> get infrastructureEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'infrastructure_encryption_enabled');

  /// Reference to `is_hns_enabled` attribute.
  TfRef<bool> get isHnsEnabled => TfRef.attribute<bool>(this, 'is_hns_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `nfsv3_enabled` attribute.
  TfRef<bool> get nfsv3Enabled => TfRef.attribute<bool>(this, 'nfsv3_enabled');

  /// Reference to `primary_access_key` attribute.
  TfRef<String> get primaryAccessKey =>
      TfRef.attribute<String>(this, 'primary_access_key');

  /// Reference to `primary_blob_connection_string` attribute.
  TfRef<String> get primaryBlobConnectionString =>
      TfRef.attribute<String>(this, 'primary_blob_connection_string');

  /// Reference to `primary_blob_endpoint` attribute.
  TfRef<String> get primaryBlobEndpoint =>
      TfRef.attribute<String>(this, 'primary_blob_endpoint');

  /// Reference to `primary_blob_host` attribute.
  TfRef<String> get primaryBlobHost =>
      TfRef.attribute<String>(this, 'primary_blob_host');

  /// Reference to `primary_blob_internet_endpoint` attribute.
  TfRef<String> get primaryBlobInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_blob_internet_endpoint');

  /// Reference to `primary_blob_internet_host` attribute.
  TfRef<String> get primaryBlobInternetHost =>
      TfRef.attribute<String>(this, 'primary_blob_internet_host');

  /// Reference to `primary_blob_microsoft_endpoint` attribute.
  TfRef<String> get primaryBlobMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_blob_microsoft_endpoint');

  /// Reference to `primary_blob_microsoft_host` attribute.
  TfRef<String> get primaryBlobMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_blob_microsoft_host');

  /// Reference to `primary_connection_string` attribute.
  TfRef<String> get primaryConnectionString =>
      TfRef.attribute<String>(this, 'primary_connection_string');

  /// Reference to `primary_dfs_endpoint` attribute.
  TfRef<String> get primaryDfsEndpoint =>
      TfRef.attribute<String>(this, 'primary_dfs_endpoint');

  /// Reference to `primary_dfs_host` attribute.
  TfRef<String> get primaryDfsHost =>
      TfRef.attribute<String>(this, 'primary_dfs_host');

  /// Reference to `primary_dfs_internet_endpoint` attribute.
  TfRef<String> get primaryDfsInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_dfs_internet_endpoint');

  /// Reference to `primary_dfs_internet_host` attribute.
  TfRef<String> get primaryDfsInternetHost =>
      TfRef.attribute<String>(this, 'primary_dfs_internet_host');

  /// Reference to `primary_dfs_microsoft_endpoint` attribute.
  TfRef<String> get primaryDfsMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_dfs_microsoft_endpoint');

  /// Reference to `primary_dfs_microsoft_host` attribute.
  TfRef<String> get primaryDfsMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_dfs_microsoft_host');

  /// Reference to `primary_file_endpoint` attribute.
  TfRef<String> get primaryFileEndpoint =>
      TfRef.attribute<String>(this, 'primary_file_endpoint');

  /// Reference to `primary_file_host` attribute.
  TfRef<String> get primaryFileHost =>
      TfRef.attribute<String>(this, 'primary_file_host');

  /// Reference to `primary_file_internet_endpoint` attribute.
  TfRef<String> get primaryFileInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_file_internet_endpoint');

  /// Reference to `primary_file_internet_host` attribute.
  TfRef<String> get primaryFileInternetHost =>
      TfRef.attribute<String>(this, 'primary_file_internet_host');

  /// Reference to `primary_file_microsoft_endpoint` attribute.
  TfRef<String> get primaryFileMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_file_microsoft_endpoint');

  /// Reference to `primary_file_microsoft_host` attribute.
  TfRef<String> get primaryFileMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_file_microsoft_host');

  /// Reference to `primary_location` attribute.
  TfRef<String> get primaryLocation =>
      TfRef.attribute<String>(this, 'primary_location');

  /// Reference to `primary_queue_endpoint` attribute.
  TfRef<String> get primaryQueueEndpoint =>
      TfRef.attribute<String>(this, 'primary_queue_endpoint');

  /// Reference to `primary_queue_host` attribute.
  TfRef<String> get primaryQueueHost =>
      TfRef.attribute<String>(this, 'primary_queue_host');

  /// Reference to `primary_queue_microsoft_endpoint` attribute.
  TfRef<String> get primaryQueueMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_queue_microsoft_endpoint');

  /// Reference to `primary_queue_microsoft_host` attribute.
  TfRef<String> get primaryQueueMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_queue_microsoft_host');

  /// Reference to `primary_table_endpoint` attribute.
  TfRef<String> get primaryTableEndpoint =>
      TfRef.attribute<String>(this, 'primary_table_endpoint');

  /// Reference to `primary_table_host` attribute.
  TfRef<String> get primaryTableHost =>
      TfRef.attribute<String>(this, 'primary_table_host');

  /// Reference to `primary_table_microsoft_endpoint` attribute.
  TfRef<String> get primaryTableMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_table_microsoft_endpoint');

  /// Reference to `primary_table_microsoft_host` attribute.
  TfRef<String> get primaryTableMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_table_microsoft_host');

  /// Reference to `primary_web_endpoint` attribute.
  TfRef<String> get primaryWebEndpoint =>
      TfRef.attribute<String>(this, 'primary_web_endpoint');

  /// Reference to `primary_web_host` attribute.
  TfRef<String> get primaryWebHost =>
      TfRef.attribute<String>(this, 'primary_web_host');

  /// Reference to `primary_web_internet_endpoint` attribute.
  TfRef<String> get primaryWebInternetEndpoint =>
      TfRef.attribute<String>(this, 'primary_web_internet_endpoint');

  /// Reference to `primary_web_internet_host` attribute.
  TfRef<String> get primaryWebInternetHost =>
      TfRef.attribute<String>(this, 'primary_web_internet_host');

  /// Reference to `primary_web_microsoft_endpoint` attribute.
  TfRef<String> get primaryWebMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'primary_web_microsoft_endpoint');

  /// Reference to `primary_web_microsoft_host` attribute.
  TfRef<String> get primaryWebMicrosoftHost =>
      TfRef.attribute<String>(this, 'primary_web_microsoft_host');

  /// Reference to `public_network_access` attribute.
  TfRef<String> get publicNetworkAccess =>
      TfRef.attribute<String>(this, 'public_network_access');

  /// Reference to `queue_encryption_key_type` attribute.
  TfRef<String> get queueEncryptionKeyType =>
      TfRef.attribute<String>(this, 'queue_encryption_key_type');

  /// Reference to `secondary_access_key` attribute.
  TfRef<String> get secondaryAccessKey =>
      TfRef.attribute<String>(this, 'secondary_access_key');

  /// Reference to `secondary_blob_connection_string` attribute.
  TfRef<String> get secondaryBlobConnectionString =>
      TfRef.attribute<String>(this, 'secondary_blob_connection_string');

  /// Reference to `secondary_blob_endpoint` attribute.
  TfRef<String> get secondaryBlobEndpoint =>
      TfRef.attribute<String>(this, 'secondary_blob_endpoint');

  /// Reference to `secondary_blob_host` attribute.
  TfRef<String> get secondaryBlobHost =>
      TfRef.attribute<String>(this, 'secondary_blob_host');

  /// Reference to `secondary_blob_internet_endpoint` attribute.
  TfRef<String> get secondaryBlobInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_blob_internet_endpoint');

  /// Reference to `secondary_blob_internet_host` attribute.
  TfRef<String> get secondaryBlobInternetHost =>
      TfRef.attribute<String>(this, 'secondary_blob_internet_host');

  /// Reference to `secondary_blob_microsoft_endpoint` attribute.
  TfRef<String> get secondaryBlobMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_blob_microsoft_endpoint');

  /// Reference to `secondary_blob_microsoft_host` attribute.
  TfRef<String> get secondaryBlobMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_blob_microsoft_host');

  /// Reference to `secondary_connection_string` attribute.
  TfRef<String> get secondaryConnectionString =>
      TfRef.attribute<String>(this, 'secondary_connection_string');

  /// Reference to `secondary_dfs_endpoint` attribute.
  TfRef<String> get secondaryDfsEndpoint =>
      TfRef.attribute<String>(this, 'secondary_dfs_endpoint');

  /// Reference to `secondary_dfs_host` attribute.
  TfRef<String> get secondaryDfsHost =>
      TfRef.attribute<String>(this, 'secondary_dfs_host');

  /// Reference to `secondary_dfs_internet_endpoint` attribute.
  TfRef<String> get secondaryDfsInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_dfs_internet_endpoint');

  /// Reference to `secondary_dfs_internet_host` attribute.
  TfRef<String> get secondaryDfsInternetHost =>
      TfRef.attribute<String>(this, 'secondary_dfs_internet_host');

  /// Reference to `secondary_dfs_microsoft_endpoint` attribute.
  TfRef<String> get secondaryDfsMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_dfs_microsoft_endpoint');

  /// Reference to `secondary_dfs_microsoft_host` attribute.
  TfRef<String> get secondaryDfsMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_dfs_microsoft_host');

  /// Reference to `secondary_file_endpoint` attribute.
  TfRef<String> get secondaryFileEndpoint =>
      TfRef.attribute<String>(this, 'secondary_file_endpoint');

  /// Reference to `secondary_file_host` attribute.
  TfRef<String> get secondaryFileHost =>
      TfRef.attribute<String>(this, 'secondary_file_host');

  /// Reference to `secondary_file_internet_endpoint` attribute.
  TfRef<String> get secondaryFileInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_file_internet_endpoint');

  /// Reference to `secondary_file_internet_host` attribute.
  TfRef<String> get secondaryFileInternetHost =>
      TfRef.attribute<String>(this, 'secondary_file_internet_host');

  /// Reference to `secondary_file_microsoft_endpoint` attribute.
  TfRef<String> get secondaryFileMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_file_microsoft_endpoint');

  /// Reference to `secondary_file_microsoft_host` attribute.
  TfRef<String> get secondaryFileMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_file_microsoft_host');

  /// Reference to `secondary_location` attribute.
  TfRef<String> get secondaryLocation =>
      TfRef.attribute<String>(this, 'secondary_location');

  /// Reference to `secondary_queue_endpoint` attribute.
  TfRef<String> get secondaryQueueEndpoint =>
      TfRef.attribute<String>(this, 'secondary_queue_endpoint');

  /// Reference to `secondary_queue_host` attribute.
  TfRef<String> get secondaryQueueHost =>
      TfRef.attribute<String>(this, 'secondary_queue_host');

  /// Reference to `secondary_queue_microsoft_endpoint` attribute.
  TfRef<String> get secondaryQueueMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_queue_microsoft_endpoint');

  /// Reference to `secondary_queue_microsoft_host` attribute.
  TfRef<String> get secondaryQueueMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_queue_microsoft_host');

  /// Reference to `secondary_table_endpoint` attribute.
  TfRef<String> get secondaryTableEndpoint =>
      TfRef.attribute<String>(this, 'secondary_table_endpoint');

  /// Reference to `secondary_table_host` attribute.
  TfRef<String> get secondaryTableHost =>
      TfRef.attribute<String>(this, 'secondary_table_host');

  /// Reference to `secondary_table_microsoft_endpoint` attribute.
  TfRef<String> get secondaryTableMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_table_microsoft_endpoint');

  /// Reference to `secondary_table_microsoft_host` attribute.
  TfRef<String> get secondaryTableMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_table_microsoft_host');

  /// Reference to `secondary_web_endpoint` attribute.
  TfRef<String> get secondaryWebEndpoint =>
      TfRef.attribute<String>(this, 'secondary_web_endpoint');

  /// Reference to `secondary_web_host` attribute.
  TfRef<String> get secondaryWebHost =>
      TfRef.attribute<String>(this, 'secondary_web_host');

  /// Reference to `secondary_web_internet_endpoint` attribute.
  TfRef<String> get secondaryWebInternetEndpoint =>
      TfRef.attribute<String>(this, 'secondary_web_internet_endpoint');

  /// Reference to `secondary_web_internet_host` attribute.
  TfRef<String> get secondaryWebInternetHost =>
      TfRef.attribute<String>(this, 'secondary_web_internet_host');

  /// Reference to `secondary_web_microsoft_endpoint` attribute.
  TfRef<String> get secondaryWebMicrosoftEndpoint =>
      TfRef.attribute<String>(this, 'secondary_web_microsoft_endpoint');

  /// Reference to `secondary_web_microsoft_host` attribute.
  TfRef<String> get secondaryWebMicrosoftHost =>
      TfRef.attribute<String>(this, 'secondary_web_microsoft_host');

  /// Reference to `table_encryption_key_type` attribute.
  TfRef<String> get tableEncryptionKeyType =>
      TfRef.attribute<String>(this, 'table_encryption_key_type');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `min_tls_version` attribute.
  TfRef<String> get minTlsVersion =>
      TfRef.attribute<String>(this, 'min_tls_version');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
