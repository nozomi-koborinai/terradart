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
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (namePrefix != null) 'name_prefix': namePrefix,
           'machine_type': machineType,
           if (region != null) 'region': region,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (metadata != null) 'metadata': metadata,
           if (metadataStartupScript != null)
             'metadata_startup_script': metadataStartupScript,
           if (tags != null) 'tags': tags,
           if (canIpForward != null) 'can_ip_forward': canIpForward,
           if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform,
           if (resourceManagerTags != null)
             'resource_manager_tags': resourceManagerTags,
           if (resourcePolicies != null) 'resource_policies': resourcePolicies,
           if (keyRevocationActionType != null)
             'key_revocation_action_type': keyRevocationActionType,
           if (instanceDescription != null)
             'instance_description': instanceDescription,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
           if (advancedMachineFeatures != null)
             'advanced_machine_features': advancedMachineFeatures,
           if (confidentialInstanceConfig != null)
             'confidential_instance_config': confidentialInstanceConfig,
           'disk': disk,
           if (guestAccelerator != null) 'guest_accelerator': guestAccelerator,
           if (networkInterface != null) 'network_interface': networkInterface,
           if (networkPerformanceConfig != null)
             'network_performance_config': networkPerformanceConfig,
           if (reservationAffinity != null)
             'reservation_affinity': reservationAffinity,
           if (scheduling != null) 'scheduling': scheduling,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': shieldedInstanceConfig,
           if (workloadIdentityConfig != null)
             'workload_identity_config': workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeRegionInstanceTemplateSensitive;

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
