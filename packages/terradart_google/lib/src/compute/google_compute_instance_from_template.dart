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
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'source_instance_template': sourceInstanceTemplate,
           'machine_type': ?machineType,
           'zone': ?zone,
           'description': ?description,
           'labels': ?labels,
           'metadata': ?metadata,
           'metadata_startup_script': ?metadataStartupScript,
           'tags': ?tags,
           'can_ip_forward': ?canIpForward,
           'allow_stopping_for_update': ?allowStoppingForUpdate,
           'deletion_protection': ?deletionProtection,
           'deletion_policy': ?deletionPolicy,
           'desired_status': ?desiredStatus,
           'enable_display': ?enableDisplay,
           'hostname': ?hostname,
           'key_revocation_action_type': ?keyRevocationActionType,
           'min_cpu_platform': ?minCpuPlatform,
           'resource_policies': ?resourcePolicies,
           'project': ?project,
           'advanced_machine_features': ?advancedMachineFeatures,
           'attached_disk': ?attachedDisk,
           'boot_disk': ?bootDisk,
           'confidential_instance_config': ?confidentialInstanceConfig,
           'guest_accelerator': ?guestAccelerator,
           'instance_encryption_key': ?instanceEncryptionKey,
           'network_interface': ?networkInterface,
           'network_performance_config': ?networkPerformanceConfig,
           'params': ?params,
           'reservation_affinity': ?reservationAffinity,
           'scheduling': ?scheduling,
           'scratch_disk': ?scratchDisk,
           'service_account': ?serviceAccount,
           'shielded_instance_config': ?shieldedInstanceConfig,
           'workload_identity_config': ?workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceFromTemplateSensitive;

  @override
  bool get supportsDeletionProtection => true;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceFromTemplate>`.
  RefTo<GoogleComputeInstanceFromTemplate> get ref => RefTo.of(this);

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
