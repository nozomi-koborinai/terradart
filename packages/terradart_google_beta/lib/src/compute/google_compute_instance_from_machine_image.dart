// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_from_machine_image`.
const Set<String> _googleComputeInstanceFromMachineImageSensitive = <String>{
  'source_machine_image_encryption_key.raw_key',
  'source_machine_image_encryption_key.rsa_encrypted_key',
};

/// Factory wrapper for `google_compute_instance_from_machine_image`.
final class GoogleComputeInstanceFromMachineImage extends Resource {
  static const String tfType = 'google_compute_instance_from_machine_image';

  GoogleComputeInstanceFromMachineImage({
    required super.localName,
    TfArg<bool>? allowStoppingForUpdate,
    TfArg<bool>? canIpForward,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? deletionProtection,
    TfArg<String>? description,
    TfArg<String>? desiredStatus,
    TfArg<bool>? enableDisplay,
    TfArg<bool>? eraseWindowsVssSignature,
    TfArg<String>? hostname,
    TfArg<String>? keyRevocationActionType,
    TfArg<Map<String, String>>? labels,
    TfArg<String>? machineType,
    TfArg<Map<String, String>>? metadata,
    TfArg<String>? metadataStartupScript,
    TfArg<String>? minCpuPlatform,
    required TfArg<String> name,
    TfArg<Map<String, String>>? partnerMetadata,
    TfArg<String>? project,
    TfArg<List<String>>? resourcePolicies,
    required TfArg<String> sourceMachineImage,
    TfArg<List<String>>? tags,
    TfArg<String>? zone,
    TfArg<Map<String, dynamic>>? advancedMachineFeatures,
    TfArg<Map<String, dynamic>>? confidentialInstanceConfig,
    TfArg<List<Map<String, dynamic>>>? guestAccelerator,
    TfArg<Map<String, dynamic>>? instanceEncryptionKey,
    TfArg<List<Map<String, dynamic>>>? networkInterface,
    TfArg<Map<String, dynamic>>? networkPerformanceConfig,
    TfArg<Map<String, dynamic>>? params,
    TfArg<Map<String, dynamic>>? reservationAffinity,
    TfArg<Map<String, dynamic>>? scheduling,
    TfArg<Map<String, dynamic>>? serviceAccount,
    TfArg<Map<String, dynamic>>? shieldedInstanceConfig,
    TfArg<Map<String, dynamic>>? sourceMachineImageEncryptionKey,
    TfArg<Map<String, dynamic>>? workloadIdentityConfig,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           if (allowStoppingForUpdate != null)
             'allow_stopping_for_update': allowStoppingForUpdate,
           if (canIpForward != null) 'can_ip_forward': canIpForward,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (deletionProtection != null)
             'deletion_protection': deletionProtection,
           if (description != null) 'description': description,
           if (desiredStatus != null) 'desired_status': desiredStatus,
           if (enableDisplay != null) 'enable_display': enableDisplay,
           if (eraseWindowsVssSignature != null)
             'erase_windows_vss_signature': eraseWindowsVssSignature,
           if (hostname != null) 'hostname': hostname,
           if (keyRevocationActionType != null)
             'key_revocation_action_type': keyRevocationActionType,
           if (labels != null) 'labels': labels,
           if (machineType != null) 'machine_type': machineType,
           if (metadata != null) 'metadata': metadata,
           if (metadataStartupScript != null)
             'metadata_startup_script': metadataStartupScript,
           if (minCpuPlatform != null) 'min_cpu_platform': minCpuPlatform,
           'name': name,
           if (partnerMetadata != null) 'partner_metadata': partnerMetadata,
           if (project != null) 'project': project,
           if (resourcePolicies != null) 'resource_policies': resourcePolicies,
           'source_machine_image': sourceMachineImage,
           if (tags != null) 'tags': tags,
           if (zone != null) 'zone': zone,
           if (advancedMachineFeatures != null)
             'advanced_machine_features': advancedMachineFeatures,
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
           if (serviceAccount != null) 'service_account': serviceAccount,
           if (shieldedInstanceConfig != null)
             'shielded_instance_config': shieldedInstanceConfig,
           if (sourceMachineImageEncryptionKey != null)
             'source_machine_image_encryption_key':
                 sourceMachineImageEncryptionKey,
           if (workloadIdentityConfig != null)
             'workload_identity_config': workloadIdentityConfig,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceFromMachineImageSensitive;

  @override
  bool get supportsDeletionProtection => true;
}
