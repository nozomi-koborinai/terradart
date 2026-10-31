// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_volume_group_oracle`.
const Set<String> _azurermNetappVolumeGroupOracleSensitive = <String>{};

/// Typed helper for the `volume` block of
/// `azurerm_netapp_volume_group_oracle` (derived from provider schema).
@immutable
final class NetappVolumeGroupOracleVolume {
  const NetappVolumeGroupOracleVolume({
    required this.capacityPoolId,
    this.encryptionKeySource,
    this.keyVaultPrivateEndpointId,
    required this.name,
    this.networkFeatures,
    required this.protocols,
    this.proximityPlacementGroupId,
    required this.securityStyle,
    required this.serviceLevel,
    required this.snapshotDirectoryVisible,
    required this.storageQuotaInGb,
    required this.subnetId,
    this.tags,
    required this.throughputInMibps,
    required this.volumePath,
    required this.volumeSpecName,
    this.zone,
    this.dataProtectionReplication,
    this.dataProtectionSnapshotPolicy,
    required this.exportPolicyRule,
  });

  final TfArg<String> capacityPoolId;

  final NetappVolumeGroupOracleEncryptionKeySource? encryptionKeySource;

  final TfArg<String>? keyVaultPrivateEndpointId;

  final TfArg<String> name;

  final NetappVolumeGroupOracleNetworkFeatures? networkFeatures;

  final EnumList<NetappVolumeGroupOracleProtocols> protocols;

  final TfArg<String>? proximityPlacementGroupId;

  final NetappVolumeGroupOracleSecurityStyle securityStyle;

  final NetappVolumeGroupOracleServiceLevel serviceLevel;

  final TfArg<bool> snapshotDirectoryVisible;

  final TfArg<num> storageQuotaInGb;

  final TfArg<String> subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num> throughputInMibps;

  final TfArg<String> volumePath;

  final NetappVolumeGroupOracleVolumeSpecName volumeSpecName;

  final TfArg<String>? zone;

  final NetappVolumeGroupOracleDataProtectionReplication?
  dataProtectionReplication;

  final NetappVolumeGroupOracleDataProtectionSnapshotPolicy?
  dataProtectionSnapshotPolicy;

  final List<NetappVolumeGroupOracleExportPolicyRule> exportPolicyRule;

  @internal
  Map<String, Object?> encode() => {
    'capacity_pool_id': capacityPoolId.toTfJson(),
    'encryption_key_source': ?encryptionKeySource?.toTfJson(),
    'key_vault_private_endpoint_id': ?keyVaultPrivateEndpointId?.toTfJson(),
    'name': name.toTfJson(),
    'network_features': ?networkFeatures?.toTfJson(),
    'protocols': protocols.toTfJson(),
    'proximity_placement_group_id': ?proximityPlacementGroupId?.toTfJson(),
    'security_style': securityStyle.toTfJson(),
    'service_level': serviceLevel.toTfJson(),
    'snapshot_directory_visible': snapshotDirectoryVisible.toTfJson(),
    'storage_quota_in_gb': storageQuotaInGb.toTfJson(),
    'subnet_id': subnetId.toTfJson(),
    'tags': ?tags?.toTfJson(),
    'throughput_in_mibps': throughputInMibps.toTfJson(),
    'volume_path': volumePath.toTfJson(),
    'volume_spec_name': volumeSpecName.toTfJson(),
    'zone': ?zone?.toTfJson(),
    'data_protection_replication': ?dataProtectionReplication?.encode(),
    'data_protection_snapshot_policy': ?dataProtectionSnapshotPolicy?.encode(),
    'export_policy_rule': [for (final e in exportPolicyRule) e.encode()],
  };
}

/// `encryption_key_source` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleEncryptionKeySource._(
  TfArg<String> _
) implements TfArg<String> {
  NetappVolumeGroupOracleEncryptionKeySource.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleEncryptionKeySource.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleEncryptionKeySource.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftKeyvault = NetappVolumeGroupOracleEncryptionKeySource._(
    TfArgLiteral('Microsoft.KeyVault'),
  );
  static const microsoftNetapp = NetappVolumeGroupOracleEncryptionKeySource._(
    TfArgLiteral('Microsoft.NetApp'),
  );

  static const List<NetappVolumeGroupOracleEncryptionKeySource> values = [
    microsoftKeyvault,
    microsoftNetapp,
  ];
}

/// `network_features` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleNetworkFeatures._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupOracleNetworkFeatures.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleNetworkFeatures.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleNetworkFeatures.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = NetappVolumeGroupOracleNetworkFeatures._(
    TfArgLiteral('Basic'),
  );
  static const basicStandard = NetappVolumeGroupOracleNetworkFeatures._(
    TfArgLiteral('Basic_Standard'),
  );
  static const standard = NetappVolumeGroupOracleNetworkFeatures._(
    TfArgLiteral('Standard'),
  );
  static const standardBasic = NetappVolumeGroupOracleNetworkFeatures._(
    TfArgLiteral('Standard_Basic'),
  );

  static const List<NetappVolumeGroupOracleNetworkFeatures> values = [
    basic,
    basicStandard,
    standard,
    standardBasic,
  ];
}

/// `protocols` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleProtocols._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupOracleProtocols.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleProtocols.arg(TfArg<String> arg) : this._(arg);

  static const nfsv4p1 = NetappVolumeGroupOracleProtocols._(
    TfArgLiteral('NFSv4.1'),
  );
  static const nfsv3 = NetappVolumeGroupOracleProtocols._(
    TfArgLiteral('NFSv3'),
  );

  static const List<NetappVolumeGroupOracleProtocols> values = [nfsv4p1, nfsv3];
}

/// `security_style` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleSecurityStyle._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupOracleSecurityStyle.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleSecurityStyle.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleSecurityStyle.arg(TfArg<String> arg)
    : this._(arg);

  static const ntfs = NetappVolumeGroupOracleSecurityStyle._(
    TfArgLiteral('ntfs'),
  );
  static const unix = NetappVolumeGroupOracleSecurityStyle._(
    TfArgLiteral('unix'),
  );

  static const List<NetappVolumeGroupOracleSecurityStyle> values = [ntfs, unix];
}

/// `service_level` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleServiceLevel._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupOracleServiceLevel.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleServiceLevel.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleServiceLevel.arg(TfArg<String> arg)
    : this._(arg);

  static const premium = NetappVolumeGroupOracleServiceLevel._(
    TfArgLiteral('Premium'),
  );
  static const standard = NetappVolumeGroupOracleServiceLevel._(
    TfArgLiteral('Standard'),
  );
  static const ultra = NetappVolumeGroupOracleServiceLevel._(
    TfArgLiteral('Ultra'),
  );
  static const flexible = NetappVolumeGroupOracleServiceLevel._(
    TfArgLiteral('Flexible'),
  );

  static const List<NetappVolumeGroupOracleServiceLevel> values = [
    premium,
    standard,
    ultra,
    flexible,
  ];
}

/// `volume_spec_name` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleVolumeSpecName._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupOracleVolumeSpecName.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleVolumeSpecName.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleVolumeSpecName.arg(TfArg<String> arg)
    : this._(arg);

  static const oraData1 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data1'),
  );
  static const oraData2 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data2'),
  );
  static const oraData3 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data3'),
  );
  static const oraData4 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data4'),
  );
  static const oraData5 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data5'),
  );
  static const oraData6 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data6'),
  );
  static const oraData7 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data7'),
  );
  static const oraData8 = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-data8'),
  );
  static const oraLog = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-log'),
  );
  static const oraLogMirror = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-log-mirror'),
  );
  static const oraBinary = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-binary'),
  );
  static const oraBackup = NetappVolumeGroupOracleVolumeSpecName._(
    TfArgLiteral('ora-backup'),
  );

  static const List<NetappVolumeGroupOracleVolumeSpecName> values = [
    oraData1,
    oraData2,
    oraData3,
    oraData4,
    oraData5,
    oraData6,
    oraData7,
    oraData8,
    oraLog,
    oraLogMirror,
    oraBinary,
    oraBackup,
  ];
}

/// Typed helper for the `volume.data_protection_replication` block of
/// `azurerm_netapp_volume_group_oracle` (derived from provider schema).
@immutable
final class NetappVolumeGroupOracleDataProtectionReplication {
  const NetappVolumeGroupOracleDataProtectionReplication({
    this.endpointType,
    required this.remoteVolumeLocation,
    required this.remoteVolumeResourceId,
    required this.replicationFrequency,
  });

  final NetappVolumeGroupOracleEndpointType? endpointType;

  final TfArg<String> remoteVolumeLocation;

  final TfArg<String> remoteVolumeResourceId;

  final NetappVolumeGroupOracleReplicationFrequency replicationFrequency;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_type': ?endpointType?.toTfJson(),
    'remote_volume_location': remoteVolumeLocation.toTfJson(),
    'remote_volume_resource_id': remoteVolumeResourceId.toTfJson(),
    'replication_frequency': replicationFrequency.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupOracleEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleEndpointType.arg(TfArg<String> arg)
    : this._(arg);

  static const dst = NetappVolumeGroupOracleEndpointType._(TfArgLiteral('dst'));
  static const src = NetappVolumeGroupOracleEndpointType._(TfArgLiteral('src'));

  static const List<NetappVolumeGroupOracleEndpointType> values = [dst, src];
}

/// `replication_frequency` — derived from the provider schema description.
extension type const NetappVolumeGroupOracleReplicationFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  NetappVolumeGroupOracleReplicationFrequency.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupOracleReplicationFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupOracleReplicationFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const v10minutes = NetappVolumeGroupOracleReplicationFrequency._(
    TfArgLiteral('10minutes'),
  );
  static const daily = NetappVolumeGroupOracleReplicationFrequency._(
    TfArgLiteral('daily'),
  );
  static const hourly = NetappVolumeGroupOracleReplicationFrequency._(
    TfArgLiteral('hourly'),
  );

  static const List<NetappVolumeGroupOracleReplicationFrequency> values = [
    v10minutes,
    daily,
    hourly,
  ];
}

/// Typed helper for the `volume.data_protection_snapshot_policy` block of
/// `azurerm_netapp_volume_group_oracle` (derived from provider schema).
@immutable
final class NetappVolumeGroupOracleDataProtectionSnapshotPolicy {
  const NetappVolumeGroupOracleDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  final TfArg<String> snapshotPolicyId;

  @internal
  Map<String, Object?> encode() => {
    'snapshot_policy_id': snapshotPolicyId.toTfJson(),
  };
}

/// Typed helper for the `volume.export_policy_rule` block of
/// `azurerm_netapp_volume_group_oracle` (derived from provider schema).
@immutable
final class NetappVolumeGroupOracleExportPolicyRule {
  const NetappVolumeGroupOracleExportPolicyRule({
    required this.allowedClients,
    required this.nfsv3Enabled,
    required this.nfsv41Enabled,
    this.rootAccessEnabled,
    required this.ruleIndex,
    this.unixReadOnly,
    this.unixReadWrite,
  });

  final TfArg<String> allowedClients;

  final TfArg<bool> nfsv3Enabled;

  final TfArg<bool> nfsv41Enabled;

  final TfArg<bool>? rootAccessEnabled;

  final TfArg<num> ruleIndex;

  final TfArg<bool>? unixReadOnly;

  final TfArg<bool>? unixReadWrite;

  @internal
  Map<String, Object?> encode() => {
    'allowed_clients': allowedClients.toTfJson(),
    'nfsv3_enabled': nfsv3Enabled.toTfJson(),
    'nfsv41_enabled': nfsv41Enabled.toTfJson(),
    'root_access_enabled': ?rootAccessEnabled?.toTfJson(),
    'rule_index': ruleIndex.toTfJson(),
    'unix_read_only': ?unixReadOnly?.toTfJson(),
    'unix_read_write': ?unixReadWrite?.toTfJson(),
  };
}

/// Factory wrapper for `azurerm_netapp_volume_group_oracle`.
final class AzurermNetappVolumeGroupOracle extends Resource {
  static const String tfType = 'azurerm_netapp_volume_group_oracle';

  AzurermNetappVolumeGroupOracle(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> applicationIdentifier,
    required TfArg<String> groupDescription,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<NetappVolumeGroupOracleVolume> volume,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_name': accountName,
           'application_identifier': applicationIdentifier,
           'group_description': groupDescription,
           'location': location,
           'name': name,
           'resource_group_name': resourceGroupName.encodeAs('name'),
           'volume': TfArg.literal([for (final e in volume) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _azurermNetappVolumeGroupOracleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappVolumeGroupOracle>`.
  RefTo<AzurermNetappVolumeGroupOracle> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `account_name` attribute.
  TfRef<String> get accountName =>
      TfRef.attribute<String>(this, 'account_name');

  /// Reference to `application_identifier` attribute.
  TfRef<String> get applicationIdentifier =>
      TfRef.attribute<String>(this, 'application_identifier');

  /// Reference to `group_description` attribute.
  TfRef<String> get groupDescription =>
      TfRef.attribute<String>(this, 'group_description');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `resource_group_name` attribute.
  TfRef<String> get resourceGroupName =>
      TfRef.attribute<String>(this, 'resource_group_name');
}
