// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_region_instance_template`.
const Set<String> _googleComputeRegionInstanceTemplateSensitive = <String>{
  'disk.source_image_encryption_key.raw_key',
  'disk.source_image_encryption_key.rsa_encrypted_key',
  'disk.source_snapshot_encryption_key.raw_key',
  'disk.source_snapshot_encryption_key.rsa_encrypted_key',
};

/// Factory wrapper for `google_compute_region_instance_template`.
///
/// Regional instance template (region-scoped sibling of
/// `google_compute_instance_template`). Required: [machineType] and at
/// least one `disk` block. Prefer [namePrefix] over [name] so Terraform
/// can rotate unique names; do not set both.
final class GoogleComputeRegionInstanceTemplate extends Resource {
  static const String tfType = 'google_compute_region_instance_template';

  GoogleComputeRegionInstanceTemplate({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? namePrefix,
    required TfArg<String> machineType,
    TfArg<String>? region,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<List<String>>? tags,
    TfArg<bool>? canIpForward,
    TfArg<String>? minCpuPlatform,
    TfArg<Map<String, String>>? resourceManagerTags,
    TfArg<List<String>>? resourcePolicies,
    TfArg<String>? keyRevocationActionType,
    TfArg<String>? instanceDescription,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? advancedMachineFeatures,
    TfArg<Map<String, dynamic>>? confidentialInstanceConfig,
    required TfArg<List<Map<String, dynamic>>> disk,
    TfArg<List<Map<String, dynamic>>>? guestAccelerator,
    TfArg<List<Map<String, dynamic>>>? networkInterface,
    TfArg<Map<String, dynamic>>? networkPerformanceConfig,
    TfArg<Map<String, dynamic>>? reservationAffinity,
    TfArg<Map<String, dynamic>>? scheduling,
    TfArg<Map<String, dynamic>>? serviceAccount,
    TfArg<Map<String, dynamic>>? shieldedInstanceConfig,
    TfArg<Map<String, dynamic>>? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'name_prefix': ?namePrefix,
           'machine_type': machineType,
           'region': ?region,
           'description': ?description,
           'labels': ?labels,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'tags': ?tags,
           'can_ip_forward': ?canIpForward,
           'min_cpu_platform': ?minCpuPlatform,
           'resource_manager_tags': ?resourceManagerTags,
           'resource_policies': ?resourcePolicies,
           'key_revocation_action_type': ?keyRevocationActionType,
           'instance_description': ?instanceDescription,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
           'advanced_machine_features': ?advancedMachineFeatures,
           'confidential_instance_config': ?confidentialInstanceConfig,
           'disk': disk,
           'guest_accelerator': ?guestAccelerator,
           'network_interface': ?networkInterface,
           'network_performance_config': ?networkPerformanceConfig,
           'reservation_affinity': ?reservationAffinity,
           'scheduling': ?scheduling,
           'service_account': ?serviceAccount,
           'shielded_instance_config': ?shieldedInstanceConfig,
           'workload_identity_config': ?workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstanceTemplateSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeRegionInstanceTemplate>`.
  RefTo<GoogleComputeRegionInstanceTemplate> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `metadata_fingerprint` attribute.
  TfRef<String> get metadataFingerprint =>
      TfRef.attribute<String>(this, 'metadata_fingerprint');

  /// Reference to `numeric_id` attribute.
  TfRef<String> get numericId => TfRef.attribute<String>(this, 'numeric_id');

  /// Reference to `tags_fingerprint` attribute.
  TfRef<String> get tagsFingerprint =>
      TfRef.attribute<String>(this, 'tags_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');
}
