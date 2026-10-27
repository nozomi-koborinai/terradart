// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../resource/azurerm_resource_group.dart' show AzurermResourceGroup;

/// Sensitive field paths for `azurerm_netapp_volume_group_sap_hana`.
const Set<String> _azurermNetappVolumeGroupSapHanaSensitive = <String>{};

/// Typed helper for the `volume` block of
/// `azurerm_netapp_volume_group_sap_hana` (derived from provider schema).
@immutable
final class NetappVolumeGroupSapHanaVolume {
  const NetappVolumeGroupSapHanaVolume({
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

  final NetappVolumeGroupSapHanaEncryptionKeySource? encryptionKeySource;

  final TfArg<String>? keyVaultPrivateEndpointId;

  final TfArg<String> name;

  final NetappVolumeGroupSapHanaNetworkFeatures? networkFeatures;

  final List<NetappVolumeGroupSapHanaProtocols> protocols;

  final TfArg<String>? proximityPlacementGroupId;

  final NetappVolumeGroupSapHanaSecurityStyle securityStyle;

  final TfArg<String> serviceLevel;

  final TfArg<bool> snapshotDirectoryVisible;

  final TfArg<num> storageQuotaInGb;

  final TfArg<String> subnetId;

  final TfArg<Map<String, String>>? tags;

  final TfArg<num> throughputInMibps;

  final TfArg<String> volumePath;

  final NetappVolumeGroupSapHanaVolumeSpecName volumeSpecName;

  final TfArg<String>? zone;

  final NetappVolumeGroupSapHanaDataProtectionReplication?
  dataProtectionReplication;

  final NetappVolumeGroupSapHanaDataProtectionSnapshotPolicy?
  dataProtectionSnapshotPolicy;

  final List<NetappVolumeGroupSapHanaExportPolicyRule> exportPolicyRule;

  @internal
  Map<String, Object?> encode() => {
    'capacity_pool_id': capacityPoolId.toTfJson(),
    'encryption_key_source': ?encryptionKeySource?.toTfJson(),
    'key_vault_private_endpoint_id': ?keyVaultPrivateEndpointId?.toTfJson(),
    'name': name.toTfJson(),
    'network_features': ?networkFeatures?.toTfJson(),
    'protocols': [for (final e in protocols) e.toTfJson()],
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
extension type const NetappVolumeGroupSapHanaEncryptionKeySource._(
  TfArg<String> _
) implements TfArg<String> {
  NetappVolumeGroupSapHanaEncryptionKeySource.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaEncryptionKeySource.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaEncryptionKeySource.arg(TfArg<String> arg)
    : this._(arg);

  static const microsoftKeyvault =
      NetappVolumeGroupSapHanaEncryptionKeySource._(
        TfArgLiteral('Microsoft.KeyVault'),
      );
  static const microsoftNetapp = NetappVolumeGroupSapHanaEncryptionKeySource._(
    TfArgLiteral('Microsoft.NetApp'),
  );

  static const List<NetappVolumeGroupSapHanaEncryptionKeySource> values = [
    microsoftKeyvault,
    microsoftNetapp,
  ];
}

/// `network_features` — derived from the provider schema description.
extension type const NetappVolumeGroupSapHanaNetworkFeatures._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupSapHanaNetworkFeatures.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaNetworkFeatures.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaNetworkFeatures.arg(TfArg<String> arg)
    : this._(arg);

  static const basic = NetappVolumeGroupSapHanaNetworkFeatures._(
    TfArgLiteral('Basic'),
  );
  static const basicStandard = NetappVolumeGroupSapHanaNetworkFeatures._(
    TfArgLiteral('Basic_Standard'),
  );
  static const standard = NetappVolumeGroupSapHanaNetworkFeatures._(
    TfArgLiteral('Standard'),
  );
  static const standardBasic = NetappVolumeGroupSapHanaNetworkFeatures._(
    TfArgLiteral('Standard_Basic'),
  );

  static const List<NetappVolumeGroupSapHanaNetworkFeatures> values = [
    basic,
    basicStandard,
    standard,
    standardBasic,
  ];
}

/// `protocols` — derived from the provider schema description.
extension type const NetappVolumeGroupSapHanaProtocols._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupSapHanaProtocols.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaProtocols.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaProtocols.arg(TfArg<String> arg) : this._(arg);

  static const nfsv4p1 = NetappVolumeGroupSapHanaProtocols._(
    TfArgLiteral('NFSv4.1'),
  );
  static const nfsv3 = NetappVolumeGroupSapHanaProtocols._(
    TfArgLiteral('NFSv3'),
  );

  static const List<NetappVolumeGroupSapHanaProtocols> values = [
    nfsv4p1,
    nfsv3,
  ];
}

/// `security_style` — derived from the provider schema description.
extension type const NetappVolumeGroupSapHanaSecurityStyle._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupSapHanaSecurityStyle.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaSecurityStyle.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaSecurityStyle.arg(TfArg<String> arg)
    : this._(arg);

  static const ntfs = NetappVolumeGroupSapHanaSecurityStyle._(
    TfArgLiteral('ntfs'),
  );
  static const unix = NetappVolumeGroupSapHanaSecurityStyle._(
    TfArgLiteral('unix'),
  );

  static const List<NetappVolumeGroupSapHanaSecurityStyle> values = [
    ntfs,
    unix,
  ];
}

/// `volume_spec_name` — derived from the provider schema description.
extension type const NetappVolumeGroupSapHanaVolumeSpecName._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupSapHanaVolumeSpecName.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaVolumeSpecName.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaVolumeSpecName.arg(TfArg<String> arg)
    : this._(arg);

  static const data = NetappVolumeGroupSapHanaVolumeSpecName._(
    TfArgLiteral('data'),
  );
  static const log = NetappVolumeGroupSapHanaVolumeSpecName._(
    TfArgLiteral('log'),
  );
  static const shared = NetappVolumeGroupSapHanaVolumeSpecName._(
    TfArgLiteral('shared'),
  );
  static const dataBackup = NetappVolumeGroupSapHanaVolumeSpecName._(
    TfArgLiteral('data-backup'),
  );
  static const logBackup = NetappVolumeGroupSapHanaVolumeSpecName._(
    TfArgLiteral('log-backup'),
  );

  static const List<NetappVolumeGroupSapHanaVolumeSpecName> values = [
    data,
    log,
    shared,
    dataBackup,
    logBackup,
  ];
}

/// Typed helper for the `volume.data_protection_replication` block of
/// `azurerm_netapp_volume_group_sap_hana` (derived from provider schema).
@immutable
final class NetappVolumeGroupSapHanaDataProtectionReplication {
  const NetappVolumeGroupSapHanaDataProtectionReplication({
    this.endpointType,
    required this.remoteVolumeLocation,
    required this.remoteVolumeResourceId,
    required this.replicationFrequency,
  });

  final NetappVolumeGroupSapHanaEndpointType? endpointType;

  final TfArg<String> remoteVolumeLocation;

  final TfArg<String> remoteVolumeResourceId;

  final NetappVolumeGroupSapHanaReplicationFrequency replicationFrequency;

  @internal
  Map<String, Object?> encode() => {
    'endpoint_type': ?endpointType?.toTfJson(),
    'remote_volume_location': remoteVolumeLocation.toTfJson(),
    'remote_volume_resource_id': remoteVolumeResourceId.toTfJson(),
    'replication_frequency': replicationFrequency.toTfJson(),
  };
}

/// `endpoint_type` — derived from the provider schema description.
extension type const NetappVolumeGroupSapHanaEndpointType._(TfArg<String> _)
    implements TfArg<String> {
  NetappVolumeGroupSapHanaEndpointType.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaEndpointType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaEndpointType.arg(TfArg<String> arg)
    : this._(arg);

  static const dst = NetappVolumeGroupSapHanaEndpointType._(
    TfArgLiteral('dst'),
  );
  static const src = NetappVolumeGroupSapHanaEndpointType._(
    TfArgLiteral('src'),
  );

  static const List<NetappVolumeGroupSapHanaEndpointType> values = [dst, src];
}

/// `replication_frequency` — derived from the provider schema description.
extension type const NetappVolumeGroupSapHanaReplicationFrequency._(
  TfArg<String> _
) implements TfArg<String> {
  NetappVolumeGroupSapHanaReplicationFrequency.variable(String name)
    : this._(TfArg.variable(name));
  NetappVolumeGroupSapHanaReplicationFrequency.expression(String template)
    : this._(TfArg.expression(template));
  const NetappVolumeGroupSapHanaReplicationFrequency.arg(TfArg<String> arg)
    : this._(arg);

  static const v10minutes = NetappVolumeGroupSapHanaReplicationFrequency._(
    TfArgLiteral('10minutes'),
  );
  static const daily = NetappVolumeGroupSapHanaReplicationFrequency._(
    TfArgLiteral('daily'),
  );
  static const hourly = NetappVolumeGroupSapHanaReplicationFrequency._(
    TfArgLiteral('hourly'),
  );

  static const List<NetappVolumeGroupSapHanaReplicationFrequency> values = [
    v10minutes,
    daily,
    hourly,
  ];
}

/// Typed helper for the `volume.data_protection_snapshot_policy` block of
/// `azurerm_netapp_volume_group_sap_hana` (derived from provider schema).
@immutable
final class NetappVolumeGroupSapHanaDataProtectionSnapshotPolicy {
  const NetappVolumeGroupSapHanaDataProtectionSnapshotPolicy({
    required this.snapshotPolicyId,
  });

  final TfArg<String> snapshotPolicyId;

  @internal
  Map<String, Object?> encode() => {
    'snapshot_policy_id': snapshotPolicyId.toTfJson(),
  };
}

/// Typed helper for the `volume.export_policy_rule` block of
/// `azurerm_netapp_volume_group_sap_hana` (derived from provider schema).
@immutable
final class NetappVolumeGroupSapHanaExportPolicyRule {
  const NetappVolumeGroupSapHanaExportPolicyRule({
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

/// Factory wrapper for `azurerm_netapp_volume_group_sap_hana`.
final class AzurermNetappVolumeGroupSapHana extends Resource {
  static const String tfType = 'azurerm_netapp_volume_group_sap_hana';

  AzurermNetappVolumeGroupSapHana(
    super.localName, {
    required TfArg<String> accountName,
    required TfArg<String> applicationIdentifier,
    required TfArg<String> groupDescription,
    required TfArg<String> location,
    required TfArg<String> name,
    required RefTo<AzurermResourceGroup> resourceGroupName,
    required List<NetappVolumeGroupSapHanaVolume> volume,
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
  Set<String> get sensitiveFields => _azurermNetappVolumeGroupSapHanaSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AzurermNetappVolumeGroupSapHana>`.
  RefTo<AzurermNetappVolumeGroupSapHana> get ref => RefTo.of(this);

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
