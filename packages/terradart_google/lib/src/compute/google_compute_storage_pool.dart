// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_storage_pool`.
const Set<String> _googleComputeStoragePoolSensitive = <String>{};

/// Compute Storage Pool Capacity Provisioning enum for `capacity_provisioning_type`.
enum ComputeStoragePoolCapacityProvisioningType implements TerraformEnum {
  standard('STANDARD'),
  advanced('ADVANCED');

  const ComputeStoragePoolCapacityProvisioningType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Compute Storage Pool Performance Provisioning enum for `performance_provisioning_type`.
enum ComputeStoragePoolPerformanceProvisioningType implements TerraformEnum {
  standard('STANDARD'),
  advanced('ADVANCED');

  const ComputeStoragePoolPerformanceProvisioningType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `params` block of
/// `google_compute_storage_pool` (derived from provider schema).
@immutable
final class ComputeStoragePoolParams {
  const ComputeStoragePoolParams({this.resourceManagerTags});

  final TfArg<Map<String, String>>? resourceManagerTags;

  Map<String, Object?> encode() => {
    'resource_manager_tags': ?resourceManagerTags?.toTfJson(),
  };
}

/// Factory wrapper for `google_compute_storage_pool`.
///
/// A Hyperdisk Storage Pool is a pre-purchased collection of capacity,
/// throughput, and IOPS which you can then provision to your applications as
/// needed. You can use Hyperdisk Storage Pools to create and manage disks in
/// pools and use the disks across multiple workloads.
///
/// Compute Engine **Hyperdisk Storage Pool** — provisioned pool capacity /
/// throughput (and optional IOPS) shared by Hyperdisk volumes.
///
/// **Cost / apply:** gcp-cost: Compute Engine `6F81-5844-456A` Hyperdisk
/// Balanced Storage Pools Standard Capacity Iowa (us-central1) SKU
/// `5BC4-9775-DEC9` **$0.08/GiBy·mo** (Throughput pool Standard Capacity
/// Iowa `D3CD-F5AE-6C2D` **$0.005/GiBy·mo**; Advanced capacity/IOPS/throughput
/// SKUs also listed). billing-behavior: provisioned pool capacity (+
/// performance) bills while the pool exists (TiB-scale minimums); destroy
/// stops the charge. Too expensive for apply-smoke even once — debt-only on
/// `terradart-validate`. **Never** wire into apply-smoke.
///
/// Enable `compute.googleapis.com` before apply. [storagePoolType] is typically
/// a Hyperdisk pool type URL (e.g. `hyperdisk-balanced`).
final class GoogleComputeStoragePool extends Resource {
  static const String tfType = 'google_compute_storage_pool';

  GoogleComputeStoragePool({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? zone,
    required TfArg<String> storagePoolType,
    required TfArg<String> poolProvisionedCapacityGb,
    required TfArg<String> poolProvisionedThroughput,
    TfArg<String>? poolProvisionedIops,
    TfArg<ComputeStoragePoolCapacityProvisioningType>? capacityProvisioningType,
    TfArg<ComputeStoragePoolPerformanceProvisioningType>?
    performanceProvisioningType,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<bool>? deletionProtection,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    ComputeStoragePoolParams? params,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'zone': ?zone,
           'storage_pool_type': storagePoolType,
           'pool_provisioned_capacity_gb': poolProvisionedCapacityGb,
           'pool_provisioned_throughput': poolProvisionedThroughput,
           'pool_provisioned_iops': ?poolProvisionedIops,
           'capacity_provisioning_type': ?capacityProvisioningType,
           'performance_provisioning_type': ?performanceProvisioningType,
           'description': ?description,
           'labels': ?labels,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           if (params != null) 'params': TfArg.literal(params.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeStoragePoolSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeStoragePool>`.
  RefTo<GoogleComputeStoragePool> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindAttr => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `resource_status` attribute.
  TfRef<List<Map<String, Object?>>> get resourceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_status');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `capacity_provisioning_type` attribute.
  TfRef<String> get capacityProvisioningType =>
      TfRef.attribute<String>(this, 'capacity_provisioning_type');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `performance_provisioning_type` attribute.
  TfRef<String> get performanceProvisioningType =>
      TfRef.attribute<String>(this, 'performance_provisioning_type');

  /// Reference to `pool_provisioned_capacity_gb` attribute.
  TfRef<String> get poolProvisionedCapacityGb =>
      TfRef.attribute<String>(this, 'pool_provisioned_capacity_gb');

  /// Reference to `pool_provisioned_iops` attribute.
  TfRef<String> get poolProvisionedIops =>
      TfRef.attribute<String>(this, 'pool_provisioned_iops');

  /// Reference to `pool_provisioned_throughput` attribute.
  TfRef<String> get poolProvisionedThroughput =>
      TfRef.attribute<String>(this, 'pool_provisioned_throughput');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `storage_pool_type` attribute.
  TfRef<String> get storagePoolType =>
      TfRef.attribute<String>(this, 'storage_pool_type');

  /// Reference to `zone` attribute.
  TfRef<String> get zone => TfRef.attribute<String>(this, 'zone');
}
