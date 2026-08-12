// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_from_template`.
const Set<String> _googleComputeInstanceFromTemplateSensitive = <String>{
  'attached_disk.disk_encryption_key_raw',
  'attached_disk.disk_encryption_key_rsa',
  'boot_disk.disk_encryption_key_raw',
  'boot_disk.disk_encryption_key_rsa',
  'boot_disk.initialize_params.source_image_encryption_key.raw_key',
  'boot_disk.initialize_params.source_image_encryption_key.rsa_encrypted_key',
  'boot_disk.initialize_params.source_snapshot_encryption_key.raw_key',
  'boot_disk.initialize_params.source_snapshot_encryption_key.rsa_encrypted_key',
};

/// Factory wrapper for `google_compute_instance_from_template`.
///
/// Creates a Compute Engine VM from an existing
/// `google_compute_instance_template` (or regional template). Fields
/// omitted here inherit from the template; any supplied field overrides
/// the template value for this instance only.
///
/// Required:
/// - [name]: instance name (ForcesNew).
/// - [sourceInstanceTemplate]: self-link of the template.
///
/// Nested override blocks mirror `google_compute_instance` (boot disk,
/// network interface, scheduling, …). Prefer the template for shared
/// shape and override only instance-specific fields here.
final class GoogleComputeInstanceFromTemplate extends Resource {
  static const String tfType = 'google_compute_instance_from_template';

  GoogleComputeInstanceFromTemplate({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> sourceInstanceTemplate,
    TfArg<String>? machineType,
    TfArg<String>? zone,
    TfArg<String>? description,
    TfArg<Map<String, String>>? labels,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<List<String>>? tags,
    TfArg<bool>? canIpForward,
    TfArg<bool>? allowStoppingForUpdate,
    TfArg<bool>? deletionProtection,
    TfArg<String>? deletionPolicy,
    TfArg<String>? desiredStatus,
    TfArg<bool>? enableDisplay,
    TfArg<String>? hostname,
    TfArg<String>? keyRevocationActionType,
    TfArg<String>? minCpuPlatform,
    TfArg<List<String>>? resourcePolicies,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? advancedMachineFeatures,
    TfArg<List<Map<String, dynamic>>>? attachedDisk,
    TfArg<Map<String, dynamic>>? bootDisk,
    TfArg<Map<String, dynamic>>? confidentialInstanceConfig,
    TfArg<List<Map<String, dynamic>>>? guestAccelerator,
    TfArg<Map<String, dynamic>>? instanceEncryptionKey,
    TfArg<List<Map<String, dynamic>>>? networkInterface,
    TfArg<Map<String, dynamic>>? networkPerformanceConfig,
    TfArg<Map<String, dynamic>>? params,
    TfArg<Map<String, dynamic>>? reservationAffinity,
    TfArg<Map<String, dynamic>>? scheduling,
    TfArg<List<Map<String, dynamic>>>? scratchDisk,
    TfArg<Map<String, dynamic>>? serviceAccount,
    TfArg<Map<String, dynamic>>? shieldedInstanceConfig,
    TfArg<Map<String, dynamic>>? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'source_instance_template': sourceInstanceTemplate,
           if (machineType != null) 'machine_type': machineType,
           if (zone != null) 'zone': zone,
           if (description != null) 'description': description,
           if (labels != null) 'labels': labels,
           if (metadata != null) 'metadata': metadata,
           if (metadataStartupScript != null)
             'metadata_startup_script': metadataStartupScript,
           if (tags != null) 'tags': tags,
           if (canIpForward != null) 'can_ip_forward': canIpForward,
           if (allowStoppingForUpdate != null)
             'allow_stopping_for_update': allowStoppingForUpdate,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (desiredStatus != null) 'desired_status': desiredStatus,
           if (enableDisplay != null) 'enable_display': enableDisplay,
           if (hostname != null) 'hostname': hostname,
           if (keyRevocationActionType != null)
             'key_revocation_action_type': keyRevocationActionType,
           if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform,
           if (resourcePolicies != null) 'resource_policies': resourcePolicies,
           if (project != null) 'project': project,
           if (advancedMachineFeatures != null)
             'advanced_machine_features': advancedMachineFeatures,
           if (attachedDisk != null) 'attached_disk': attachedDisk,
           if (bootDisk != null) 'boot_disk': bootDisk,
           if (confidentialInstanceConfig != null)
             'confidential_instance_config': confidentialInstanceConfig,
           if (guestAccelerator != null) 'guest_accelerator': guestAccelerator,
           if (instanceEncryptionKey != null)
             'instance_encryption_key': instanceEncryptionKey,
           if (networkInterface != null) 'network_interface': networkInterface,
           if (networkPerformanceConfig != null)
             'network_performance_config': networkPerformanceConfig,
           if (params != null) 'params': params,
           if (reservationAffinity != null)
             'reservation_affinity': reservationAffinity,
           if (scheduling != null) 'scheduling': scheduling,
           if (scratchDisk != null) 'scratch_disk': scratchDisk,
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': shieldedInstanceConfig,
           if (workloadIdentityConfig != null)
             'workload_identity_config': workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceFromTemplateSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `cpu_platform` attribute.
  TfRef<String> get cpuPlatform =>
      TfRef.attribute<String>(this, 'cpu_platform');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `current_status` attribute.
  TfRef<String> get currentStatus =>
      TfRef.attribute<String>(this, 'current_status');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `metadata_fingerprint` attribute.
  TfRef<String> get metadataFingerprint =>
      TfRef.attribute<String>(this, 'metadata_fingerprint');

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

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');
}
