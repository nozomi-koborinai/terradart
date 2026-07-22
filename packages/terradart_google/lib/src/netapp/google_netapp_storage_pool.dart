// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_netapp_storage_pool`.
const Set<String> _googleNetappStoragePoolSensitive = <String>{};

/// Netapp Storage Pool enum for `mode`.
enum NetappStoragePoolMode implements TerraformEnum {
  modeUnspecified('MODE_UNSPECIFIED'),
  defaultCase('DEFAULT'),
  ontap('ONTAP');

  const NetappStoragePoolMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Netapp Storage Pool Qos enum for `qos_type`.
enum NetappStoragePoolQosType implements TerraformEnum {
  qosTypeUnspecified('QOS_TYPE_UNSPECIFIED'),
  auto('AUTO'),
  manual('MANUAL');

  const NetappStoragePoolQosType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Netapp Storage Pool Scale enum for `scale_type`.
enum NetappStoragePoolScaleType implements TerraformEnum {
  scaleTypeUnspecified('SCALE_TYPE_UNSPECIFIED'),
  scaleTypeDefault('SCALE_TYPE_DEFAULT'),
  scaleTypeScaleout('SCALE_TYPE_SCALEOUT');

  const NetappStoragePoolScaleType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Netapp Storage Pool Service enum for `service_level`.
enum NetappStoragePoolServiceLevel implements TerraformEnum {
  premium('PREMIUM'),
  extreme('EXTREME'),
  standard('STANDARD'),
  flex('FLEX');

  const NetappStoragePoolServiceLevel(this.terraformValue);
  @override
  final String terraformValue;
}

/// Netapp Storage Pool enum for `type`.
enum NetappStoragePoolType implements TerraformEnum {
  storagePoolTypeUnspecified('STORAGE_POOL_TYPE_UNSPECIFIED'),
  file('FILE'),
  unified('UNIFIED');

  const NetappStoragePoolType(this.terraformValue);
  @override
  final String terraformValue;
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
///   localName: 'pool',
///   name: TfArg.literal('terradart-pool'),
///   location: TfArg.literal('us-central1'),
///   network: TfArg.ref(vpc.id),
///   serviceLevel: TfArg.literal(NetappStoragePoolServiceLevel.standard),
///   capacityGib: TfArg.literal(2048),
/// );
/// ```
final class GoogleNetappStoragePool extends Resource {
  static const String tfType = 'google_netapp_storage_pool';

  GoogleNetappStoragePool({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<String> network,
    required TfArg<NetappStoragePoolServiceLevel> serviceLevel,
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
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'network': network,
           'service_level': serviceLevel,
           'capacity_gib': capacityGib,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (ldapEnabled != null) 'ldap_enabled': ldapEnabled,
           if (activeDirectory != null) 'active_directory': activeDirectory,
           if (kmsConfig != null) 'kms_config': kmsConfig,
           if (allowAutoTiering != null) 'allow_auto_tiering': allowAutoTiering,
           if (customPerformanceEnabled != null)
             'custom_performance_enabled': customPerformanceEnabled,
           if (totalThroughputMibps != null)
             'total_throughput_mibps': totalThroughputMibps,
           if (totalIops != null) 'total_iops': totalIops,
           if (hotTierSizeGib != null) 'hot_tier_size_gib': hotTierSizeGib,
           if (enableHotTierAutoResize != null)
             'enable_hot_tier_auto_resize': enableHotTierAutoResize,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleNetappStoragePoolSensitive;

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

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');
}
