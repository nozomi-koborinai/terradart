// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_network.dart' show GoogleComputeNetwork;

/// Sensitive field paths for `google_netapp_storage_pool`.
const Set<String> _googleNetappStoragePoolSensitive = <String>{};

/// Netapp Storage Pool enum for `mode`.
extension type const NetappStoragePoolMode._(TfArg<String> _)
    implements TfArg<String> {
  NetappStoragePoolMode.variable(String name) : this._(TfArg.variable(name));
  NetappStoragePoolMode.expression(String template)
    : this._(TfArg.expression(template));
  const NetappStoragePoolMode.arg(TfArg<String> arg) : this._(arg);

  static const modeUnspecified = NetappStoragePoolMode._(
    TfArgLiteral('MODE_UNSPECIFIED'),
  );
  static const defaultCase = NetappStoragePoolMode._(TfArgLiteral('DEFAULT'));
  static const ontap = NetappStoragePoolMode._(TfArgLiteral('ONTAP'));

  static const List<NetappStoragePoolMode> values = [
    modeUnspecified,
    defaultCase,
    ontap,
  ];
}

/// Netapp Storage Pool Qos enum for `qos_type`.
extension type const NetappStoragePoolQosType._(TfArg<String> _)
    implements TfArg<String> {
  NetappStoragePoolQosType.variable(String name) : this._(TfArg.variable(name));
  NetappStoragePoolQosType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappStoragePoolQosType.arg(TfArg<String> arg) : this._(arg);

  static const qosTypeUnspecified = NetappStoragePoolQosType._(
    TfArgLiteral('QOS_TYPE_UNSPECIFIED'),
  );
  static const auto = NetappStoragePoolQosType._(TfArgLiteral('AUTO'));
  static const manual = NetappStoragePoolQosType._(TfArgLiteral('MANUAL'));

  static const List<NetappStoragePoolQosType> values = [
    qosTypeUnspecified,
    auto,
    manual,
  ];
}

/// Netapp Storage Pool Scale enum for `scale_type`.
extension type const NetappStoragePoolScaleType._(TfArg<String> _)
    implements TfArg<String> {
  NetappStoragePoolScaleType.variable(String name)
    : this._(TfArg.variable(name));
  NetappStoragePoolScaleType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappStoragePoolScaleType.arg(TfArg<String> arg) : this._(arg);

  static const scaleTypeUnspecified = NetappStoragePoolScaleType._(
    TfArgLiteral('SCALE_TYPE_UNSPECIFIED'),
  );
  static const scaleTypeDefault = NetappStoragePoolScaleType._(
    TfArgLiteral('SCALE_TYPE_DEFAULT'),
  );
  static const scaleTypeScaleout = NetappStoragePoolScaleType._(
    TfArgLiteral('SCALE_TYPE_SCALEOUT'),
  );

  static const List<NetappStoragePoolScaleType> values = [
    scaleTypeUnspecified,
    scaleTypeDefault,
    scaleTypeScaleout,
  ];
}

/// Netapp Storage Pool Service enum for `service_level`.
extension type const NetappStoragePoolServiceLevel._(TfArg<String> _)
    implements TfArg<String> {
  NetappStoragePoolServiceLevel.variable(String name)
    : this._(TfArg.variable(name));
  NetappStoragePoolServiceLevel.expression(String template)
    : this._(TfArg.expression(template));
  const NetappStoragePoolServiceLevel.arg(TfArg<String> arg) : this._(arg);

  static const premium = NetappStoragePoolServiceLevel._(
    TfArgLiteral('PREMIUM'),
  );
  static const extreme = NetappStoragePoolServiceLevel._(
    TfArgLiteral('EXTREME'),
  );
  static const standard = NetappStoragePoolServiceLevel._(
    TfArgLiteral('STANDARD'),
  );
  static const flex = NetappStoragePoolServiceLevel._(TfArgLiteral('FLEX'));

  static const List<NetappStoragePoolServiceLevel> values = [
    premium,
    extreme,
    standard,
    flex,
  ];
}

/// Netapp Storage Pool enum for `type`.
extension type const NetappStoragePoolType._(TfArg<String> _)
    implements TfArg<String> {
  NetappStoragePoolType.variable(String name) : this._(TfArg.variable(name));
  NetappStoragePoolType.expression(String template)
    : this._(TfArg.expression(template));
  const NetappStoragePoolType.arg(TfArg<String> arg) : this._(arg);

  static const storagePoolTypeUnspecified = NetappStoragePoolType._(
    TfArgLiteral('STORAGE_POOL_TYPE_UNSPECIFIED'),
  );
  static const file = NetappStoragePoolType._(TfArgLiteral('FILE'));
  static const unified = NetappStoragePoolType._(TfArgLiteral('UNIFIED'));

  static const List<NetappStoragePoolType> values = [
    storagePoolTypeUnspecified,
    file,
    unified,
  ];
}

/// Factory wrapper for `google_netapp_storage_pool`.
///
/// Storage pools act as containers for volumes. All volumes in a storage pool
/// share the following information: * Location * Service level * Virtual
/// Private Cloud (VPC) network * Active Directory policy * LDAP use for NFS
/// volumes, if applicable * Customer-managed encryption key (CMEK) policy
///
/// The capacity of the pool can be split up and assigned to volumes within the
/// pool. Storage pools are a billable component of NetApp Volumes. Billing is
/// based on the location, service level, and capacity allocated to a pool
/// independent of consumption at the volume level.
///
/// Storage pools of service level Flex are available as zonal (single zone) or
/// regional (two zones in same region) pools. Zonal and regional pools are
/// high-available within the zone. On top of that, regional pools have
/// `replica_zone` as hot standby zone. All volume access is served from the
/// `zone`. If `zone` fails, `replica_zone` automatically becomes the active
/// zone. This will cause state drift in your configuration. If a zone switch
/// (manual or automatic) is triggered outside of Terraform, you need to adjust
/// the `zone` and `replica_zone` values to reflect the current state, or
/// Terraform will initiate a zone switch when running the next apply. You can
/// trigger a manual [zone
/// switch](https://cloud.google.com/netapp/volumes/docs/configure-and-use/storage-pools/edit-or-delete-storage-pool#switch_active_and_replica_zones)
/// via Terraform by swapping the value of the `zone` and `replica_zone`
/// parameters in your HCL code.
///
/// Google Cloud **NetApp Volumes** storage pool — provisioned capacity
/// that volumes draw from.
///
/// **Cost:** Cloud Billing Catalog service `FC86-5113-7C81` bills pool
/// capacity while the pool exists (us-central1 Standard SKU
/// `C2DF-4710-FFE1` **$0.2/GiBy·mo**; Flex Zonal `211D-EBE1-87C9`
/// **$0.2/GiBy·mo**; Premium `5BCD-5BCB-41A3` **~$0.29/GiBy·mo**).
/// Typical minimum sizes are large (TiB-scale) → too expensive for
/// apply-smoke. Factories ship without a quickstart.
///
/// Enable `netapp.googleapis.com` via [GoogleProjectService] before apply.
///
/// Example:
/// ```dart
/// GoogleNetappStoragePool(
///   'pool',
///   name: TfArg.literal('terradart-pool'),
///   location: TfArg.literal('us-central1'),
///   network: vpc.ref,
///   serviceLevel: NetappStoragePoolServiceLevel.standard,
///   capacityGib: TfArg.literal('2048'),
/// );
/// ```
final class GoogleNetappStoragePool extends Resource {
  static const String tfType = 'google_netapp_storage_pool';

  GoogleNetappStoragePool(
    super.localName, {
    required TfArg<String> name,
    required TfArg<String> location,
    required RefTo<GoogleComputeNetwork> network,
    required NetappStoragePoolServiceLevel serviceLevel,
    required TfArg<String> capacityGib,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? ldapEnabled,
    TfArg<String>? activeDirectory,
    TfArg<String>? kmsConfig,
    TfArg<bool>? allowAutoTiering,
    TfArg<bool>? customPerformanceEnabled,
    TfArg<String>? totalThroughputMibps,
    TfArg<String>? totalIops,
    TfArg<String>? hotTierSizeGib,
    TfArg<bool>? enableHotTierAutoResize,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'network': network.encodeAs('id'),
           'service_level': serviceLevel,
           'capacity_gib': capacityGib,
           'description': ?description,
           'labels': ?labels,
           'ldap_enabled': ?ldapEnabled,
           'active_directory': ?activeDirectory,
           'kms_config': ?kmsConfig,
           'allow_auto_tiering': ?allowAutoTiering,
           'custom_performance_enabled': ?customPerformanceEnabled,
           'total_throughput_mibps': ?totalThroughputMibps,
           'total_iops': ?totalIops,
           'hot_tier_size_gib': ?hotTierSizeGib,
           'enable_hot_tier_auto_resize': ?enableHotTierAutoResize,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappStoragePoolSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleNetappStoragePool>`.
  RefTo<GoogleNetappStoragePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `available_throughput_mibps` attribute.
  TfRef<num> get availableThroughputMibps =>
      TfRef.attribute<num>(this, 'available_throughput_mibps');

  /// Reference to `cold_tier_size_used_gib` attribute.
  TfRef<String> get coldTierSizeUsedGib =>
      TfRef.attribute<String>(this, 'cold_tier_size_used_gib');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `encryption_type` attribute.
  TfRef<String> get encryptionType =>
      TfRef.attribute<String>(this, 'encryption_type');

  /// Reference to `hot_tier_size_used_gib` attribute.
  TfRef<String> get hotTierSizeUsedGib =>
      TfRef.attribute<String>(this, 'hot_tier_size_used_gib');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `volume_capacity_gib` attribute.
  TfRef<String> get volumeCapacityGib =>
      TfRef.attribute<String>(this, 'volume_capacity_gib');

  /// Reference to `volume_count` attribute.
  TfRef<num> get volumeCount => TfRef.attribute<num>(this, 'volume_count');

  /// Reference to `active_directory` attribute.
  TfRef<String> get activeDirectory =>
      TfRef.attribute<String>(this, 'active_directory');

  /// Reference to `allow_auto_tiering` attribute.
  TfRef<bool> get allowAutoTiering =>
      TfRef.attribute<bool>(this, 'allow_auto_tiering');

  /// Reference to `capacity_gib` attribute.
  TfRef<String> get capacityGib =>
      TfRef.attribute<String>(this, 'capacity_gib');

  /// Reference to `custom_performance_enabled` attribute.
  TfRef<bool> get customPerformanceEnabled =>
      TfRef.attribute<bool>(this, 'custom_performance_enabled');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `enable_hot_tier_auto_resize` attribute.
  TfRef<bool> get enableHotTierAutoResize =>
      TfRef.attribute<bool>(this, 'enable_hot_tier_auto_resize');

  /// Reference to `hot_tier_size_gib` attribute.
  TfRef<String> get hotTierSizeGib =>
      TfRef.attribute<String>(this, 'hot_tier_size_gib');

  /// Reference to `kms_config` attribute.
  TfRef<String> get kmsConfig => TfRef.attribute<String>(this, 'kms_config');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `ldap_enabled` attribute.
  TfRef<bool> get ldapEnabled => TfRef.attribute<bool>(this, 'ldap_enabled');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `mode` attribute.
  TfRef<String> get mode => TfRef.attribute<String>(this, 'mode');

  /// Reference to `network` attribute.
  TfRef<String> get network => TfRef.attribute<String>(this, 'network');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `qos_type` attribute.
  TfRef<String> get qosType => TfRef.attribute<String>(this, 'qos_type');

  /// Reference to `replica_zone` attribute.
  TfRef<String> get replicaZone =>
      TfRef.attribute<String>(this, 'replica_zone');

  /// Reference to `scale_type` attribute.
  TfRef<String> get scaleType => TfRef.attribute<String>(this, 'scale_type');

  /// Reference to `service_level` attribute.
  TfRef<String> get serviceLevel =>
      TfRef.attribute<String>(this, 'service_level');

  /// Reference to `total_iops` attribute.
  TfRef<String> get totalIops => TfRef.attribute<String>(this, 'total_iops');

  /// Reference to `total_throughput_mibps` attribute.
  TfRef<String> get totalThroughputMibps =>
      TfRef.attribute<String>(this, 'total_throughput_mibps');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
