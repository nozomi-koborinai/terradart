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
    if (resourceManagerTags != null)
      'resource_manager_tags': resourceManagerTags!.toTfJson(),
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
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (zone != null) 'zone': zone,
           'storage_pool_type': storagePoolType,
           'pool_provisioned_capacity_gb': poolProvisionedCapacityGb,
           'pool_provisioned_throughput': poolProvisionedThroughput,
           if (poolProvisionedIops != null)
             'pool_provisioned_iops': poolProvisionedIops,
           if (capacityProvisioningType != null)
             'capacity_provisioning_type': capacityProvisioningType,
           if (performanceProvisioningType != null)
             'performance_provisioning_type': performanceProvisioningType,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeStoragePoolSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

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

  /// Reference to `id` attribute.
  TfRef<String> get idRef => TfRef.attribute<String>(this, 'id');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
