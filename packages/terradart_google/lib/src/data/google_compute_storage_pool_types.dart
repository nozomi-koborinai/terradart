// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_storage_pool_types`.
const Set<String> _googleComputeStoragePoolTypesSensitive = <String>{};

/// Factory wrapper for `google_compute_storage_pool_types`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeStoragePoolTypes extends Data {
  static const String tfType = 'google_compute_storage_pool_types';

  DataGoogleComputeStoragePoolTypes({
    required super.localName,
    TfArg<String>? project,
    required TfArg<String> storagePoolType,
    required TfArg<String> zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           'storage_pool_type': storagePoolType,
           'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeStoragePoolTypesSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `kind` attribute.
  TfRef<String> get kindRef => TfRef.attribute<String>(this, 'kind');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deprecated` attribute.
  TfRef<List<Map<String, Object?>>> get deprecated =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'deprecated');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `max_pool_provisioned_capacity_gb` attribute.
  TfRef<num> get maxPoolProvisionedCapacityGb =>
      TfRef.attribute<num>(this, 'max_pool_provisioned_capacity_gb');

  /// Reference to `max_pool_provisioned_iops` attribute.
  TfRef<num> get maxPoolProvisionedIops =>
      TfRef.attribute<num>(this, 'max_pool_provisioned_iops');

  /// Reference to `max_pool_provisioned_throughput` attribute.
  TfRef<num> get maxPoolProvisionedThroughput =>
      TfRef.attribute<num>(this, 'max_pool_provisioned_throughput');

  /// Reference to `min_pool_provisioned_capacity_gb` attribute.
  TfRef<num> get minPoolProvisionedCapacityGb =>
      TfRef.attribute<num>(this, 'min_pool_provisioned_capacity_gb');

  /// Reference to `min_pool_provisioned_iops` attribute.
  TfRef<num> get minPoolProvisionedIops =>
      TfRef.attribute<num>(this, 'min_pool_provisioned_iops');

  /// Reference to `min_pool_provisioned_throughput` attribute.
  TfRef<num> get minPoolProvisionedThroughput =>
      TfRef.attribute<num>(this, 'min_pool_provisioned_throughput');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `self_link_with_id` attribute.
  TfRef<String> get selfLinkWithId =>
      TfRef.attribute<String>(this, 'self_link_with_id');

  /// Reference to `supported_disk_types` attribute.
  TfRef<List<String>> get supportedDiskTypes =>
      TfRef.attribute<List<String>>(this, 'supported_disk_types');
}
