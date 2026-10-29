// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
/// Azure Resource Manager netapp resources.
library;

export 'package:terradart_core/terradart_core.dart';
export 'src/data/azurerm_netapp_account.dart'
    show DataAzurermNetappAccount, DataNetappAccountIdentity;
export 'src/data/azurerm_netapp_account_encryption.dart'
    show DataAzurermNetappAccountEncryption;
export 'src/data/azurerm_netapp_backup_policy.dart'
    show DataAzurermNetappBackupPolicy;
export 'src/data/azurerm_netapp_backup_vault.dart'
    show DataAzurermNetappBackupVault;
export 'src/data/azurerm_netapp_pool.dart' show DataAzurermNetappPool;
export 'src/data/azurerm_netapp_snapshot.dart' show DataAzurermNetappSnapshot;
export 'src/data/azurerm_netapp_snapshot_policy.dart'
    show DataAzurermNetappSnapshotPolicy;
export 'src/data/azurerm_netapp_volume.dart' show DataAzurermNetappVolume;
export 'src/data/azurerm_netapp_volume_bucket.dart'
    show DataAzurermNetappVolumeBucket;
export 'src/data/azurerm_netapp_volume_bucket_with_server.dart'
    show DataAzurermNetappVolumeBucketWithServer;
export 'src/data/azurerm_netapp_volume_group_oracle.dart'
    show DataAzurermNetappVolumeGroupOracle;
export 'src/data/azurerm_netapp_volume_group_sap_hana.dart'
    show DataAzurermNetappVolumeGroupSapHana;
export 'src/data/azurerm_netapp_volume_quota_rule.dart'
    show DataAzurermNetappVolumeQuotaRule;
export 'src/netapp/azurerm_netapp_account.dart'
    show
        AzurermNetappAccount,
        NetappAccountActiveDirectory,
        NetappAccountIdentity;
export 'src/netapp/azurerm_netapp_account_encryption.dart'
    show
        AzurermNetappAccountEncryption,
        NetappAccountEncryptionIdentity,
        NetappAccountEncryptionIdentitySystemAssignedIdentityPrincipalId,
        NetappAccountEncryptionIdentityUserAssignedIdentityId;
export 'src/netapp/azurerm_netapp_backup_policy.dart'
    show AzurermNetappBackupPolicy;
export 'src/netapp/azurerm_netapp_backup_vault.dart'
    show AzurermNetappBackupVault;
export 'src/netapp/azurerm_netapp_pool.dart'
    show AzurermNetappPool, NetappPoolEncryptionType, NetappPoolQosType;
export 'src/netapp/azurerm_netapp_snapshot.dart' show AzurermNetappSnapshot;
export 'src/netapp/azurerm_netapp_snapshot_policy.dart'
    show
        AzurermNetappSnapshotPolicy,
        NetappSnapshotPolicyDailySchedule,
        NetappSnapshotPolicyHourlySchedule,
        NetappSnapshotPolicyMonthlySchedule,
        NetappSnapshotPolicyWeeklySchedule;
export 'src/netapp/azurerm_netapp_volume.dart'
    show
        AzurermNetappVolume,
        AzurermNetappVolumeSecurityStyle,
        AzurermNetappVolumeTieringPolicy,
        NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit,
        NetappVolumeCoolAccess,
        NetappVolumeDataProtectionAdvancedRansomware,
        NetappVolumeDataProtectionBackupPolicy,
        NetappVolumeDataProtectionReplication,
        NetappVolumeDataProtectionSnapshotPolicy,
        NetappVolumeEncryptionKeySource,
        NetappVolumeExportPolicyRule,
        NetappVolumeProtocol,
        NetappVolumeProtocols,
        NetappVolumeReplicationFrequency,
        NetappVolumeRetrievalPolicy;
export 'src/netapp/azurerm_netapp_volume_bucket.dart'
    show
        AzurermNetappVolumeBucket,
        NetappVolumeBucketFileSystemNfsUser,
        NetappVolumeBucketKeyVault;
export 'src/netapp/azurerm_netapp_volume_bucket_with_server.dart'
    show
        AzurermNetappVolumeBucketWithServer,
        NetappVolumeBucketWithServer,
        NetappVolumeBucketWithServerFileSystemNfsUser,
        NetappVolumeBucketWithServerKeyVault;
export 'src/netapp/azurerm_netapp_volume_group_oracle.dart'
    show
        AzurermNetappVolumeGroupOracle,
        NetappVolumeGroupOracleDataProtectionReplication,
        NetappVolumeGroupOracleDataProtectionSnapshotPolicy,
        NetappVolumeGroupOracleEncryptionKeySource,
        NetappVolumeGroupOracleEndpointType,
        NetappVolumeGroupOracleExportPolicyRule,
        NetappVolumeGroupOracleNetworkFeatures,
        NetappVolumeGroupOracleProtocols,
        NetappVolumeGroupOracleReplicationFrequency,
        NetappVolumeGroupOracleSecurityStyle,
        NetappVolumeGroupOracleVolume,
        NetappVolumeGroupOracleVolumeSpecName;
export 'src/netapp/azurerm_netapp_volume_group_sap_hana.dart'
    show
        AzurermNetappVolumeGroupSapHana,
        NetappVolumeGroupSapHanaDataProtectionReplication,
        NetappVolumeGroupSapHanaDataProtectionSnapshotPolicy,
        NetappVolumeGroupSapHanaEncryptionKeySource,
        NetappVolumeGroupSapHanaEndpointType,
        NetappVolumeGroupSapHanaExportPolicyRule,
        NetappVolumeGroupSapHanaNetworkFeatures,
        NetappVolumeGroupSapHanaProtocols,
        NetappVolumeGroupSapHanaReplicationFrequency,
        NetappVolumeGroupSapHanaSecurityStyle,
        NetappVolumeGroupSapHanaVolume,
        NetappVolumeGroupSapHanaVolumeSpecName;
export 'src/netapp/azurerm_netapp_volume_quota_rule.dart'
    show AzurermNetappVolumeQuotaRule, NetappVolumeQuotaRuleQuotaType;
