// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_storage_pool`.
const Set<String> _googleComputeStoragePoolSensitive = <String>{};

/// Factory wrapper for `google_compute_storage_pool`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeStoragePool extends Data {
  static const String tfType = 'google_compute_storage_pool';

  DataGoogleComputeStoragePool({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    required TfArg<String> zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeStoragePoolSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `capacity_provisioning_type` attribute.
  TfRef<String> get capacityProvisioningType =>
      TfRef.attribute<String>(this, 'capacity_provisioning_type');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

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

  /// Reference to `resource_status` attribute.
  TfRef<List<Map<String, Object?>>> get resourceStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_status');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `storage_pool_type` attribute.
  TfRef<String> get storagePoolType =>
      TfRef.attribute<String>(this, 'storage_pool_type');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');
}
