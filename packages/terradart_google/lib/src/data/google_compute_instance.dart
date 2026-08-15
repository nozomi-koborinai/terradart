// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance`.
const Set<String> _googleComputeInstanceSensitive = <String>{};

/// Factory wrapper for `google_compute_instance`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstance extends Data {
  static const String tfType = 'google_compute_instance';

  DataGoogleComputeInstance({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? project,
    TfArg<String>? selfLink,
    TfArg<String>? zone,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (project != null) 'project': project,
           if (selfLink != null) 'self_link': selfLink,
           if (zone != null) 'zone': zone,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeInstanceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `advanced_machine_features` attribute.
  TfRef<List<Map<String, Object?>>> get advancedMachineFeatures =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'advanced_machine_features',
      );

  /// Reference to `allow_stopping_for_update` attribute.
  TfRef<bool> get allowStoppingForUpdate =>
      TfRef.attribute<bool>(this, 'allow_stopping_for_update');

  /// Reference to `attached_disk` attribute.
  TfRef<List<Map<String, Object?>>> get attachedDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'attached_disk');

  /// Reference to `boot_disk` attribute.
  TfRef<List<Map<String, Object?>>> get bootDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'boot_disk');

  /// Reference to `can_ip_forward` attribute.
  TfRef<bool> get canIpForward => TfRef.attribute<bool>(this, 'can_ip_forward');

  /// Reference to `confidential_instance_config` attribute.
  TfRef<List<Map<String, Object?>>> get confidentialInstanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'confidential_instance_config',
      );

  /// Reference to `cpu_platform` attribute.
  TfRef<String> get cpuPlatform =>
      TfRef.attribute<String>(this, 'cpu_platform');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `current_status` attribute.
  TfRef<String> get currentStatus =>
      TfRef.attribute<String>(this, 'current_status');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `deletion_protection` attribute.
  TfRef<bool> get deletionProtection =>
      TfRef.attribute<bool>(this, 'deletion_protection');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `desired_status` attribute.
  TfRef<String> get desiredStatus =>
      TfRef.attribute<String>(this, 'desired_status');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `enable_display` attribute.
  TfRef<bool> get enableDisplay =>
      TfRef.attribute<bool>(this, 'enable_display');

  /// Reference to `guest_accelerator` attribute.
  TfRef<List<Map<String, Object?>>> get guestAccelerator =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'guest_accelerator');

  /// Reference to `hostname` attribute.
  TfRef<String> get hostname => TfRef.attribute<String>(this, 'hostname');

  /// Reference to `instance_encryption_key` attribute.
  TfRef<List<Map<String, Object?>>> get instanceEncryptionKey =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_encryption_key',
      );

  /// Reference to `instance_id` attribute.
  TfRef<String> get instanceId => TfRef.attribute<String>(this, 'instance_id');

  /// Reference to `key_revocation_action_type` attribute.
  TfRef<String> get keyRevocationActionType =>
      TfRef.attribute<String>(this, 'key_revocation_action_type');

  /// Reference to `label_fingerprint` attribute.
  TfRef<String> get labelFingerprint =>
      TfRef.attribute<String>(this, 'label_fingerprint');

  /// Reference to `labels` attribute.
  TfRef<Map<String, String>> get labels =>
      TfRef.attribute<Map<String, String>>(this, 'labels');

  /// Reference to `machine_type` attribute.
  TfRef<String> get machineType =>
      TfRef.attribute<String>(this, 'machine_type');

  /// Reference to `metadata` attribute.
  TfRef<Map<String, String>> get metadata =>
      TfRef.attribute<Map<String, String>>(this, 'metadata');

  /// Reference to `metadata_fingerprint` attribute.
  TfRef<String> get metadataFingerprint =>
      TfRef.attribute<String>(this, 'metadata_fingerprint');

  /// Reference to `metadata_startup_script` attribute.
  TfRef<String> get metadataStartupScript =>
      TfRef.attribute<String>(this, 'metadata_startup_script');

  /// Reference to `min_cpu_platform` attribute.
  TfRef<String> get minCpuPlatform =>
      TfRef.attribute<String>(this, 'min_cpu_platform');

  /// Reference to `network_interface` attribute.
  TfRef<List<Map<String, Object?>>> get networkInterface =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'network_interface');

  /// Reference to `network_performance_config` attribute.
  TfRef<List<Map<String, Object?>>> get networkPerformanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'network_performance_config',
      );

  /// Reference to `params` attribute.
  TfRef<List<Map<String, Object?>>> get params =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'params');

  /// Reference to `reservation_affinity` attribute.
  TfRef<List<Map<String, Object?>>> get reservationAffinity =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'reservation_affinity');

  /// Reference to `resource_policies` attribute.
  TfRef<List<String>> get resourcePolicies =>
      TfRef.attribute<List<String>>(this, 'resource_policies');

  /// Reference to `scheduling` attribute.
  TfRef<List<Map<String, Object?>>> get scheduling =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scheduling');

  /// Reference to `scratch_disk` attribute.
  TfRef<List<Map<String, Object?>>> get scratchDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'scratch_disk');

  /// Reference to `service_account` attribute.
  TfRef<List<Map<String, Object?>>> get serviceAccount =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'service_account');

  /// Reference to `shielded_instance_config` attribute.
  TfRef<List<Map<String, Object?>>> get shieldedInstanceConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'shielded_instance_config',
      );

  /// Reference to `tags` attribute.
  TfRef<List<String>> get tags => TfRef.attribute<List<String>>(this, 'tags');

  /// Reference to `tags_fingerprint` attribute.
  TfRef<String> get tagsFingerprint =>
      TfRef.attribute<String>(this, 'tags_fingerprint');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `workload_identity_config` attribute.
  TfRef<List<Map<String, Object?>>> get workloadIdentityConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'workload_identity_config',
      );
}
