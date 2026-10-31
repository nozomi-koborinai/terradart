// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;
import '../subnet/azurerm_subnet.dart' show AzurermSubnet;

/// Sensitive field paths for `azurerm_netapp_volume`.
const Set<String> _azurermNetappVolumeSensitive = <String>{};

/// Netapp Volume Accept Grow Capacity Pool For Short Term Clone enum for `accept_grow_capacity_pool_for_short_term_clone_split`.
extension type const NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit._(
  TfArg<String> _
) implements TfArg<String> {
  NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const accepted =
      NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit._(
        TfArgLiteral('Accepted'),
      );
  static const declined =
      NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit._(
        TfArgLiteral('Declined'),
      );

  static const List<NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit>
  values = [accepted, declined];
}

/// Netapp Volume Encryption Key enum for `encryption_key_source`.
extension type const NetappVolumeEncryptionKeySource._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeEncryptionKeySource.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeEncryptionKeySource.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeEncryptionKeySource.arg(TfArg<String> arg) : this._(arg);

  static const microsoftKeyvault = NetappVolumeEncryptionKeySource._(
    TfArgLiteral('Microsoft.KeyVault'),
  );
  static const microsoftNetapp = NetappVolumeEncryptionKeySource._(
    TfArgLiteral('Microsoft.NetApp'),
  );

  static const List<NetappVolumeEncryptionKeySource> values = [
    microsoftKeyvault,
    microsoftNetapp,
  ];
}

/// Netapp Volume Network enum for `network_features`.
extension type const NetappVolumeNetworkFeatures._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeNetworkFeatures.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeNetworkFeatures.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeNetworkFeatures.arg(TfArg<String> arg) : this._(arg);

  static const basic = NetappVolumeNetworkFeatures._(TfArgLiteral('Basic'));
  static const standard = NetappVolumeNetworkFeatures._(
    TfArgLiteral('Standard'),
  );

  static const List<NetappVolumeNetworkFeatures> values = [basic, standard];
}

/// Netapp Volume enum for `protocols`.
extension type const NetappVolumeProtocols._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeProtocols.variable(String name) : this._(TfArg.variable(name));
  NetappVolumeProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeProtocols.arg(TfArg<String> arg) : this._(arg);

  static const nfsv3 = NetappVolumeProtocols._(TfArgLiteral('NFSv3'));
  static const nfsv4p1 = NetappVolumeProtocols._(TfArgLiteral('NFSv4.1'));
  static const cifs = NetappVolumeProtocols._(TfArgLiteral('CIFS'));

  static const List<NetappVolumeProtocols> values = [nfsv3, nfsv4p1, cifs];
}

/// Azurerm Netapp Volume Security enum for `security_style`.
extension type const AzurermNetappVolumeSecurityStyle._(TfArg<String> _)
    implements TfArg<String> {
  AzurermNetappVolumeSecurityStyle.variable(String name)
    : this._(TfArg.variable(name));
  AzurermNetappVolumeSecurityStyle.expression(String template)
    : this._(TfArg.expression(template));
  const AzurermNetappVolumeSecurityStyle.arg(TfArg<String> arg) : this._(arg);

  static const ntfs = AzurermNetappVolumeSecurityStyle._(TfArgLiteral('ntfs'));
  static const unix = AzurermNetappVolumeSecurityStyle._(TfArgLiteral('unix'));

  static const List<AzurermNetappVolumeSecurityStyle> values = [ntfs, unix];
}

/// Netapp Volume Service enum for `service_level`.
extension type const NetappVolumeServiceLevel._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeServiceLevel.variable(String name) : this._(TfArg.variable(name));
  NetappVolumeServiceLevel.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeServiceLevel.arg(TfArg<String> arg) : this._(arg);

  static const premium = NetappVolumeServiceLevel._(TfArgLiteral('Premium'));
  static const standard = NetappVolumeServiceLevel._(TfArgLiteral('Standard'));
  static const ultra = NetappVolumeServiceLevel._(TfArgLiteral('Ultra'));
  static const flexible = NetappVolumeServiceLevel._(TfArgLiteral('Flexible'));

  static const List<NetappVolumeServiceLevel> values = [
    premium,
    standard,
    ultra,
    flexible,
  ];
}

/// Typed helper for the `cool_access` block of
/// `azurerm_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeCoolAccess {
  const NetappVolumeCoolAccess({
    required this.coolnessPeriodInDays,
    required this.retrievalPolicy,
    required this.tieringPolicy,
  });

  final TfArg<num> coolnessPeriodInDays;

  final NetappVolumeRetrievalPolicy retrievalPolicy;

  final AzurermNetappVolumeTieringPolicy tieringPolicy;

  @internal
  Map<String, Object?> encode() => {
    'coolness_period_in_days': coolnessPeriodInDays.toTfJson(),
    'retrieval_policy': retrievalPolicy.toTfJson(),
    'tiering_policy': tieringPolicy.toTfJson(),
  };
}

/// `retrieval_policy` — derived from the provider schema description.
extension type const NetappVolumeRetrievalPolicy._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeRetrievalPolicy.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeRetrievalPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeRetrievalPolicy.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = NetappVolumeRetrievalPolicy._(
    TfArgLiteral('Default'),
  );
  static const never = NetappVolumeRetrievalPolicy._(TfArgLiteral('Never'));
  static const onread = NetappVolumeRetrievalPolicy._(TfArgLiteral('OnRead'));

  static const List<NetappVolumeRetrievalPolicy> values = [
    defaultCase,
    never,
    onread,
  ];
}

/// `tiering_policy` — derived from the provider schema description.
extension type const AzurermNetappVolumeTieringPolicy._(TfArg<String> _)
    implements TfArg<String> {
  AzurermNetappVolumeTieringPolicy.variable(String name)
    : this._(TfArg.variable(name));
  AzurermNetappVolumeTieringPolicy.expression(String template)
    : this._(TfArg.expression(template));
  const AzurermNetappVolumeTieringPolicy.arg(TfArg<String> arg) : this._(arg);

  static const auto = AzurermNetappVolumeTieringPolicy._(TfArgLiteral('Auto'));
  static const snapshotonly = AzurermNetappVolumeTieringPolicy._(
    TfArgLiteral('SnapshotOnly'),
  );

  static const List<AzurermNetappVolumeTieringPolicy> values = [
    auto,
    snapshotonly,
  ];
}

/// Typed helper for the `data_protection_advanced_ransomware` block of
/// `azurerm_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeDataProtectionAdvancedRansomware {
  const NetappVolumeDataProtectionAdvancedRansomware({
    required this.protectionEnabled,
  });

  final TfArg<bool> protectionEnabled;

  @internal
  Map<String, Object?> encode() => {
    'protection_enabled': protectionEnabled.toTfJson(),
  };
}

/// Typed helper for the `data_protection_backup_policy` block of
/// `azurerm_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeDataProtectionBackupPolicy {
  const NetappVolumeDataProtectionBackupPolicy({
    required this.backupPolicyId,
    required this.backupVaultId,
    this.policyEnabled,
  });

  final TfArg<String> backupPolicyId;

  final TfArg<String> backupVaultId;

  final TfArg<bool>? policyEnabled;

  @internal
  Map<String, Object?> encode() => {
    'backup_policy_id': backupPolicyId.toTfJson(),
    'backup_vault_id': backupVaultId.toTfJson(),
    'policy_enabled': ?policyEnabled?.toTfJson(),
  };
}

/// Typed helper for the `data_protection_replication` block of
/// `azurerm_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeDataProtectionReplication {
  const NetappVolumeDataProtectionReplication({
    this.endpointType,
    required this.remoteVolumeLocation,
    required this.remoteVolumeResourceId,
    required this.replicationFrequency,
  });

  final NetappVolumeEndpointType? endpointType;

  final TfArg<String> remoteVolumeLocation;

  final TfArg<String> remoteVolumeResourceId;

  final NetappVolumeReplicationFrequency replicationFrequency;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_type': ?endpointType?.toTfJson(),
    'remote_volume_location': remoteVolumeLocation.toTfJson(),
    'remote_volume_resource_id': remoteVolumeResourceId.toTfJson(),
    'replication_frequency': replicationFrequency.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
extension type const NetappVolumeEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeEndpointType.variable(String name) : this._(TfArg.variable(name));
  NetappVolumeEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeEndpointType.arg(TfArg<String> arg) : this._(arg);

  static const dst = NetappVolumeEndpointType._(TfArgLiteral('dst'));

  static const List<NetappVolumeEndpointType> values = [dst];
}

/// `replication_frequency` — derived from the provider schema description.
extension type const NetappVolumeReplicationFrequency._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeReplicationFrequency.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeReplicationFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeReplicationFrequency.arg(TfArg<String> arg) : this._(arg);

  static const v10minutes = NetappVolumeReplicationFrequency._(
    TfArgLiteral('10minutes'),
  );
  static const daily = NetappVolumeReplicationFrequency._(
    TfArgLiteral('daily'),
  );
  static const hourly = NetappVolumeReplicationFrequency._(
    TfArgLiteral('hourly'),
  );

  static const List<NetappVolumeReplicationFrequency> values = [
    v10minutes,
    daily,
    hourly,
  ];
}

/// Typed helper for the `data_protection_snapshot_policy` block of
/// `azurerm_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeDataProtectionSnapshotPolicy {
  const NetappVolumeDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  final TfArg<String> snapshotPolicyId;

  @internal
  Map<String, Object?> encode() => {
    'snapshot_policy_id': snapshotPolicyId.toTfJson(),
  };
}

/// Typed helper for the `export_policy_rule` block of
/// `azurerm_netapp_volume` (derived from provider schema).
@immutable
final class NetappVolumeExportPolicyRule {
  const NetappVolumeExportPolicyRule({
    required this.allowedClients,
    this.kerberos5ReadOnlyEnabled,
    this.kerberos5ReadWriteEnabled,
    this.kerberos5iReadOnlyEnabled,
    this.kerberos5iReadWriteEnabled,
    this.kerberos5pReadOnlyEnabled,
    this.kerberos5pReadWriteEnabled,
    this.protocol,
    this.rootAccessEnabled,
    required this.ruleIndex,
    this.unixReadOnly,
    this.unixReadWrite,
  });

  final TfArg<List<String>> allowedClients;

  final TfArg<bool>? kerberos5ReadOnlyEnabled;

  final TfArg<bool>? kerberos5ReadWriteEnabled;

  final TfArg<bool>? kerberos5iReadOnlyEnabled;

  final TfArg<bool>? kerberos5iReadWriteEnabled;

  final TfArg<bool>? kerberos5pReadOnlyEnabled;

  final TfArg<bool>? kerberos5pReadWriteEnabled;

  final List<NetappVolumeProtocol>? protocol;

  final TfArg<bool>? rootAccessEnabled;

  final TfArg<num> ruleIndex;

  final TfArg<bool>? unixReadOnly;

  final TfArg<bool>? unixReadWrite;

  @internal
  Map<String, Object?> encode() => {
    'allowed_clients': allowedClients.toTfJson(),
    'kerberos_5_read_only_enabled': ?kerberos5ReadOnlyEnabled?.toTfJson(),
    'kerberos_5_read_write_enabled': ?kerberos5ReadWriteEnabled?.toTfJson(),
    'kerberos_5i_read_only_enabled': ?kerberos5iReadOnlyEnabled?.toTfJson(),
    'kerberos_5i_read_write_enabled': ?kerberos5iReadWriteEnabled?.toTfJson(),
    'kerberos_5p_read_only_enabled': ?kerberos5pReadOnlyEnabled?.toTfJson(),
    'kerberos_5p_read_write_enabled': ?kerberos5pReadWriteEnabled?.toTfJson(),
    if (protocol != null) 'protocol': [for (final e in protocol!) e.toTfJson()],
    'root_access_enabled': ?rootAccessEnabled?.toTfJson(),
    'rule_index': ruleIndex.toTfJson(),
    'unix_read_only': ?unixReadOnly?.toTfJson(),
    'unix_read_write': ?unixReadWrite?.toTfJson(),
  };
}

/// `protocol` — derived from the provider schema description.
extension type const NetappVolumeProtocol._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeProtocol.variable(String name) : this._(TfArg.variable(name));
  NetappVolumeProtocol.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeProtocol.arg(TfArg<String> arg) : this._(arg);

  static const nfsv3 = NetappVolumeProtocol._(TfArgLiteral('NFSv3'));
  static const nfsv4p1 = NetappVolumeProtocol._(TfArgLiteral('NFSv4.1'));
  static const cifs = NetappVolumeProtocol._(TfArgLiteral('CIFS'));

  static const List<NetappVolumeProtocol> values = [nfsv3, nfsv4p1, cifs];
}

/// Factory wrapper for `azurerm_netapp_volume`.
final class AzurermNetappVolume extends Resource {
  static const String tfType = 'azurerm_netapp_volume';

  AzurermNetappVolume(
    super.localName, {
    NetappVolumeAcceptGrowCapacityPoolForShortTermCloneSplit?
    acceptGrowCapacityPoolForShortTermCloneSplit,
    required TfArg<String> accountName,
    TfArg<bool>? azureVmwareDataStoreEnabled,
    TfArg<bool>? breakthroughModeEnabled,
    TfArg<String>? createFromSnapshotResourceId,
    NetappVolumeEncryptionKeySource? encryptionKeySource,
    TfArg<bool>? kerberosEnabled,
    TfArg<String>? keyVaultPrivateEndpointId,
    TfArg<bool>? largeVolumeEnabled,
    required TfArg<String> location,
    required TfArg<String> name,
    NetappVolumeNetworkFeatures? networkFeatures,
    required TfArg<String> poolName,
    List<NetappVolumeProtocols>? protocols,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    AzurermNetappVolumeSecurityStyle? securityStyle,
    required NetappVolumeServiceLevel serviceLevel,
    TfArg<bool>? smb3ProtocolEncryptionEnabled,
    TfArg<bool>? smbAccessBasedEnumerationEnabled,
    TfArg<bool>? smbContinuousAvailabilityEnabled,
    TfArg<bool>? smbNonBrowsableEnabled,
    TfArg<bool>? snapshotDirectoryVisible,
    required TfArg<num> storageQuotaInGb,
    required RefTo<AzurermSubnet> subnetId,
    TfArg<Map<String, String>>? tags,
    TfArg<num>? throughputInMibps,
    TfArg<String>? unixPermissions,
    required TfArg<String> volumePath,
    TfArg<String>? zone,
    NetappVolumeCoolAccess? coolAccess,
    NetappVolumeDataProtectionAdvancedRansomware?
    dataProtectionAdvancedRansomware,
    NetappVolumeDataProtectionBackupPolicy? dataProtectionBackupPolicy,
    NetappVolumeDataProtectionReplication? dataProtectionReplication,
    NetappVolumeDataProtectionSnapshotPolicy? dataProtectionSnapshotPolicy,
    List<NetappVolumeExportPolicyRule>? exportPolicyRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'accept_grow_capacity_pool_for_short_term_clone_split':
               ?acceptGrowCapacityPoolForShortTermCloneSplit,
           'account_name': accountName,
           'azure_vmware_data_store_enabled': ?azureVmwareDataStoreEnabled,
           'breakthrough_mode_enabled': ?breakthroughModeEnabled,
           'create_from_snapshot_resource_id': ?createFromSnapshotResourceId,
           'encryption_key_source': ?encryptionKeySource,
           'kerberos_enabled': ?kerberosEnabled,
           'key_vault_private_endpoint_id': ?keyVaultPrivateEndpointId,
           'large_volume_enabled': ?largeVolumeEnabled,
           'location': location,
           'name': name,
           'network_features': ?networkFeatures,
           'pool_name': poolName,
           if (protocols != null)
             'protocols': TfArg.literal([
               for (final e in protocols) e.toTfJson(),
             ]),
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'security_style': ?securityStyle,
           'service_level': serviceLevel,
           'smb3_protocol_encryption_enabled': ?smb3ProtocolEncryptionEnabled,
           'smb_access_based_enumeration_enabled':
               ?smbAccessBasedEnumerationEnabled,
           'smb_continuous_availability_enabled':
               ?smbContinuousAvailabilityEnabled,
           'smb_non_browsable_enabled': ?smbNonBrowsableEnabled,
           'snapshot_directory_visible': ?snapshotDirectoryVisible,
           'storage_quota_in_gb': storageQuotaInGb,
           'subnet_id': subnetId.encodeAs('id'),
           'tags': ?tags,
           'throughput_in_mibps': ?throughputInMibps,
           'unix_permissions': ?unixPermissions,
           'volume_path': volumePath,
           'zone': ?zone,
           if (coolAccess != null)
             'cool_access': TfArg.literal(coolAccess.encode()),
           if (dataProtectionAdvancedRansomware != null)
             'data_protection_advanced_ransomware': TfArg.literal(
               dataProtectionAdvancedRansomware.encode(),
             ),
           if (dataProtectionBackupPolicy != null)
             'data_protection_backup_policy': TfArg.literal(
               dataProtectionBackupPolicy.encode(),
             ),
           if (dataProtectionReplication != null)
             'data_protection_replication': TfArg.literal(
               dataProtectionReplication.encode(),
             ),
           if (dataProtectionSnapshotPolicy != null)
             'data_protection_snapshot_policy': TfArg.literal(
               dataProtectionSnapshotPolicy.encode(),
             ),
           if (exportPolicyRule != null)
             'export_policy_rule': TfArg.literal([
               for (final e in exportPolicyRule) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappVolume>`.
  RefTo<AzurermNetappVolume> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `mount_target` attribute.
  TfRef<List<Map<String, Object?>>> get mountTarget =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'mount_target');

  /// Reference to `accept_grow_capacity_pool_for_short_term_clone_split` attribute.
  TfRef<String> get acceptGrowCapacityPoolForShortTermCloneSplit =>
      TfRef.attribute<String>(
        this,
        'accept_grow_capacity_pool_for_short_term_clone_split',
      );

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `azure_vmware_data_store_enabled` attribute.
  TfRef<bool> get azureVmwareDataStoreEnabled =>
      TfRef.attribute<bool>(this, 'azure_vmware_data_store_enabled');

  /// Reference to `breakthrough_mode_enabled` attribute.
  TfRef<bool> get breakthroughModeEnabled =>
      TfRef.attribute<bool>(this, 'breakthrough_mode_enabled');

  /// Reference to `create_from_snapshot_resource_id` attribute.
  TfRef<String> get createFromSnapshotResourceId =>
      TfRef.attribute<String>(this, 'create_from_snapshot_resource_id');

  /// Reference to `encryption_key_source` attribute.
  TfRef<String> get encryptionKeySource =>
      TfRef.attribute<String>(this, 'encryption_key_source');

  /// Reference to `kerberos_enabled` attribute.
  TfRef<bool> get kerberosEnabled =>
      TfRef.attribute<bool>(this, 'kerberos_enabled');

  /// Reference to `key_vault_private_endpoint_id` attribute.
  TfRef<String> get keyVaultPrivateEndpointId =>
      TfRef.attribute<String>(this, 'key_vault_private_endpoint_id');

  /// Reference to `large_volume_enabled` attribute.
  TfRef<bool> get largeVolumeEnabled =>
      TfRef.attribute<bool>(this, 'large_volume_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `network_features` attribute.
  TfRef<String> get networkFeatures =>
      TfRef.attribute<String>(this, 'network_features');

  /// Reference to `pool_name` attribute.
  TfRef<String> get poolName => TfRef.attribute<String>(this, 'pool_name');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');

  /// Reference to `security_style` attribute.
  TfRef<String> get securityStyle =>
      TfRef.attribute<String>(this, 'security_style');

  /// Reference to `service_level` attribute.
  TfRef<String> get serviceLevel =>
      TfRef.attribute<String>(this, 'service_level');

  /// Reference to `smb3_protocol_encryption_enabled` attribute.
  TfRef<bool> get smb3ProtocolEncryptionEnabled =>
      TfRef.attribute<bool>(this, 'smb3_protocol_encryption_enabled');

  /// Reference to `smb_access_based_enumeration_enabled` attribute.
  TfRef<bool> get smbAccessBasedEnumerationEnabled =>
      TfRef.attribute<bool>(this, 'smb_access_based_enumeration_enabled');

  /// Reference to `smb_continuous_availability_enabled` attribute.
  TfRef<bool> get smbContinuousAvailabilityEnabled =>
      TfRef.attribute<bool>(this, 'smb_continuous_availability_enabled');

  /// Reference to `smb_non_browsable_enabled` attribute.
  TfRef<bool> get smbNonBrowsableEnabled =>
      TfRef.attribute<bool>(this, 'smb_non_browsable_enabled');

  /// Reference to `snapshot_directory_visible` attribute.
  TfRef<bool> get snapshotDirectoryVisible =>
      TfRef.attribute<bool>(this, 'snapshot_directory_visible');

  /// Reference to `storage_quota_in_gb` attribute.
  TfRef<num> get storageQuotaInGb =>
      TfRef.attribute<num>(this, 'storage_quota_in_gb');

  /// Reference to `subnet_id` attribute.
  TfRef<String> get subnetId => TfRef.attribute<String>(this, 'subnet_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `throughput_in_mibps` attribute.
  TfRef<num> get throughputInMibps =>
      TfRef.attribute<num>(this, 'throughput_in_mibps');

  /// Reference to `unix_permissions` attribute.
  TfRef<String> get unixPermissions =>
      TfRef.attribute<String>(this, 'unix_permissions');

  /// Reference to `volume_path` attribute.
  TfRef<String> get volumePath => TfRef.attribute<String>(this, 'volume_path');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
