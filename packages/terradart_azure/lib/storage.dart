// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager storage resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_storage_account.dart' show DataAzurermStorageAccount;
export 'src/data/azurerm_storage_account_blob_container_sas.dart'
    show
        DataAzurermStorageAccountBlobContainerSas,
        DataStorageAccountBlobContainerSasPermissions;
export 'src/data/azurerm_storage_account_sas.dart'
    show
        DataAzurermStorageAccountSas,
        DataStorageAccountSasPermissions,
        DataStorageAccountSasResourceTypes,
        DataStorageAccountSasServices;
export 'src/data/azurerm_storage_account_static_website.dart'
    show DataAzurermStorageAccountStaticWebsite;
export 'src/data/azurerm_storage_blob.dart' show DataAzurermStorageBlob;
export 'src/data/azurerm_storage_container.dart'
    show DataAzurermStorageContainer;
export 'src/data/azurerm_storage_containers.dart'
    show DataAzurermStorageContainers;
export 'src/data/azurerm_storage_encryption_scope.dart'
    show DataAzurermStorageEncryptionScope;
export 'src/data/azurerm_storage_management_policy.dart'
    show DataAzurermStorageManagementPolicy;
export 'src/data/azurerm_storage_queue.dart' show DataAzurermStorageQueue;
export 'src/data/azurerm_storage_share.dart'
    show DataAzurermStorageShare, DataStorageShareAcl;
export 'src/data/azurerm_storage_sync.dart' show DataAzurermStorageSync;
export 'src/data/azurerm_storage_sync_group.dart'
    show DataAzurermStorageSyncGroup;
export 'src/data/azurerm_storage_table.dart' show DataAzurermStorageTable;
export 'src/data/azurerm_storage_table_entities.dart'
    show DataAzurermStorageTableEntities;
export 'src/data/azurerm_storage_table_entity.dart'
    show DataAzurermStorageTableEntity;
export 'src/storage/azurerm_storage_account.dart'
    show
        AzurermStorageAccount,
        StorageAccountAccessTier,
        StorageAccountActiveDirectory,
        StorageAccountAllowedCopyScope,
        StorageAccountAuthenticationTypes,
        StorageAccountAzureFilesAuthentication,
        StorageAccountBlobProperties,
        StorageAccountBypass,
        StorageAccountChannelEncryptionType,
        StorageAccountChoice,
        StorageAccountContainerDeleteRetentionPolicy,
        StorageAccountCorsRule,
        StorageAccountCustomDomain,
        StorageAccountCustomerManagedKey,
        StorageAccountDefaultAction,
        StorageAccountDefaultShareLevelPermission,
        StorageAccountDeleteRetentionPolicy,
        StorageAccountDnsEndpointType,
        StorageAccountExpirationAction,
        StorageAccountIdentity,
        StorageAccountImmutabilityPolicy,
        StorageAccountKerberosTicketEncryptionType,
        StorageAccountNetworkRules,
        StorageAccountPrivateLinkAccess,
        StorageAccountPublicNetworkAccess,
        StorageAccountQueueEncryptionKeyType,
        StorageAccountReplicationType,
        StorageAccountRestorePolicy,
        StorageAccountRetentionPolicy,
        StorageAccountRouting,
        StorageAccountSasPolicy,
        StorageAccountShareProperties,
        StorageAccountSmb,
        StorageAccountState,
        StorageAccountTableEncryptionKeyType,
        StorageAccountTier,
        StorageAccountVersions;
export 'src/storage/azurerm_storage_account_customer_managed_key.dart'
    show AzurermStorageAccountCustomerManagedKey;
export 'src/storage/azurerm_storage_account_local_user.dart'
    show
        AzurermStorageAccountLocalUser,
        StorageAccountLocalUserPermissionScope,
        StorageAccountLocalUserPermissions,
        StorageAccountLocalUserService,
        StorageAccountLocalUserSshAuthorizedKey;
export 'src/storage/azurerm_storage_account_network_rules.dart'
    show
        AzurermStorageAccountNetworkRules,
        StorageAccountNetworkRulesBypass,
        StorageAccountNetworkRulesDefaultAction,
        StorageAccountNetworkRulesPrivateLinkAccess;
export 'src/storage/azurerm_storage_account_queue_properties.dart'
    show
        AzurermStorageAccountQueueProperties,
        StorageAccountQueuePropertiesAllowedMethods,
        StorageAccountQueuePropertiesCorsRule,
        StorageAccountQueuePropertiesHourMetrics,
        StorageAccountQueuePropertiesLogging,
        StorageAccountQueuePropertiesMinuteMetrics;
export 'src/storage/azurerm_storage_account_static_website.dart'
    show AzurermStorageAccountStaticWebsite;
export 'src/storage/azurerm_storage_account_table_properties.dart'
    show
        AzurermStorageAccountTableProperties,
        StorageAccountTablePropertiesAllowedMethods,
        StorageAccountTablePropertiesCorsRule,
        StorageAccountTablePropertiesHourMetrics,
        StorageAccountTablePropertiesLogging,
        StorageAccountTablePropertiesMinuteMetrics;
export 'src/storage/azurerm_storage_blob.dart'
    show AzurermStorageBlob, StorageBlobType;
export 'src/storage/azurerm_storage_blob_inventory_policy.dart'
    show
        AzurermStorageBlobInventoryPolicy,
        StorageBlobInventoryPolicyBlobTypes,
        StorageBlobInventoryPolicyFilter,
        StorageBlobInventoryPolicyFormat,
        StorageBlobInventoryPolicyRules,
        StorageBlobInventoryPolicySchedule,
        StorageBlobInventoryPolicyScope;
export 'src/storage/azurerm_storage_container.dart'
    show AzurermStorageContainer;
export 'src/storage/azurerm_storage_container_immutability_policy.dart'
    show AzurermStorageContainerImmutabilityPolicy;
export 'src/storage/azurerm_storage_data_lake_gen2_filesystem.dart'
    show
        AzurermStorageDataLakeGen2Filesystem,
        StorageDataLakeGen2FilesystemAce,
        StorageDataLakeGen2FilesystemScope,
        StorageDataLakeGen2FilesystemType;
export 'src/storage/azurerm_storage_data_lake_gen2_path.dart'
    show
        AzurermStorageDataLakeGen2Path,
        StorageDataLakeGen2PathAce,
        StorageDataLakeGen2PathScope,
        StorageDataLakeGen2PathType;
export 'src/storage/azurerm_storage_discovery_workspace.dart'
    show
        AzurermStorageDiscoveryWorkspace,
        StorageDiscoveryWorkspaceScope,
        StorageDiscoveryWorkspaceSku;
export 'src/storage/azurerm_storage_encryption_scope.dart'
    show AzurermStorageEncryptionScope, StorageEncryptionScopeSource;
export 'src/storage/azurerm_storage_management_policy.dart'
    show
        AzurermStorageManagementPolicy,
        StorageManagementPolicyActions,
        StorageManagementPolicyBaseBlob,
        StorageManagementPolicyBlobTypes,
        StorageManagementPolicyFilters,
        StorageManagementPolicyMatchBlobIndexTag,
        StorageManagementPolicyRule,
        StorageManagementPolicySnapshot,
        StorageManagementPolicyVersion;
export 'src/storage/azurerm_storage_mover.dart' show AzurermStorageMover;
export 'src/storage/azurerm_storage_mover_agent.dart'
    show AzurermStorageMoverAgent;
export 'src/storage/azurerm_storage_mover_job_definition.dart'
    show AzurermStorageMoverJobDefinition, StorageMoverJobDefinitionCopyMode;
export 'src/storage/azurerm_storage_mover_project.dart'
    show AzurermStorageMoverProject;
export 'src/storage/azurerm_storage_mover_source_endpoint.dart'
    show
        AzurermStorageMoverSourceEndpoint,
        StorageMoverSourceEndpointNfsVersion;
export 'src/storage/azurerm_storage_mover_target_endpoint.dart'
    show AzurermStorageMoverTargetEndpoint;
export 'src/storage/azurerm_storage_object_replication.dart'
    show AzurermStorageObjectReplication, StorageObjectReplicationRules;
export 'src/storage/azurerm_storage_queue.dart' show AzurermStorageQueue;
export 'src/storage/azurerm_storage_share.dart'
    show AzurermStorageShare, StorageShareAccessPolicy, StorageShareAcl;
export 'src/storage/azurerm_storage_share_directory.dart'
    show AzurermStorageShareDirectory;
export 'src/storage/azurerm_storage_share_file.dart'
    show AzurermStorageShareFile;
export 'src/storage/azurerm_storage_sync.dart'
    show AzurermStorageSync, StorageSyncIncomingTrafficPolicy;
export 'src/storage/azurerm_storage_sync_cloud_endpoint.dart'
    show AzurermStorageSyncCloudEndpoint;
export 'src/storage/azurerm_storage_sync_group.dart'
    show AzurermStorageSyncGroup;
export 'src/storage/azurerm_storage_sync_server_endpoint.dart'
    show
        AzurermStorageSyncServerEndpoint,
        StorageSyncServerEndpointInitialDownloadPolicy,
        StorageSyncServerEndpointLocalCacheMode;
export 'src/storage/azurerm_storage_table.dart'
    show AzurermStorageTable, StorageTableAccessPolicy, StorageTableAcl;
export 'src/storage/azurerm_storage_table_entity.dart'
    show AzurermStorageTableEntity;
