// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_instance_group_manager`.
const Set<String> _googleComputeInstanceGroupManagerSensitive = <String>{};

/// Factory wrapper for `google_compute_instance_group_manager`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeInstanceGroupManager extends Data {
  static const String tfType = 'google_compute_instance_group_manager';

  DataGoogleComputeInstanceGroupManager({
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
  Set<String> get sensitiveFields =>
      _googleComputeInstanceGroupManagerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `all_instances_config` attribute.
  TfRef<List<Map<String, Object?>>> get allInstancesConfig =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'all_instances_config');

  /// Reference to `auto_healing_policies` attribute.
  TfRef<List<Map<String, Object?>>> get autoHealingPolicies =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'auto_healing_policies',
      );

  /// Reference to `base_instance_name` attribute.
  TfRef<String> get baseInstanceName =>
      TfRef.attribute<String>(this, 'base_instance_name');

  /// Reference to `creation_timestamp` attribute.
  TfRef<String> get creationTimestamp =>
      TfRef.attribute<String>(this, 'creation_timestamp');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `fingerprint` attribute.
  TfRef<String> get fingerprint => TfRef.attribute<String>(this, 'fingerprint');

  /// Reference to `instance_group` attribute.
  TfRef<String> get instanceGroup =>
      TfRef.attribute<String>(this, 'instance_group');

  /// Reference to `instance_group_manager_id` attribute.
  TfRef<num> get instanceGroupManagerId =>
      TfRef.attribute<num>(this, 'instance_group_manager_id');

  /// Reference to `instance_lifecycle_policy` attribute.
  TfRef<List<Map<String, Object?>>> get instanceLifecyclePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_lifecycle_policy',
      );

  /// Reference to `list_managed_instances_results` attribute.
  TfRef<String> get listManagedInstancesResults =>
      TfRef.attribute<String>(this, 'list_managed_instances_results');

  /// Reference to `named_port` attribute.
  TfRef<List<Map<String, Object?>>> get namedPort =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'named_port');

  /// Reference to `operation` attribute.
  TfRef<String> get operation => TfRef.attribute<String>(this, 'operation');

  /// Reference to `resource_policies` attribute.
  TfRef<List<Map<String, Object?>>> get resourcePolicies =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'resource_policies');

  /// Reference to `standby_policy` attribute.
  TfRef<List<Map<String, Object?>>> get standbyPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'standby_policy');

  /// Reference to `stateful_disk` attribute.
  TfRef<List<Map<String, Object?>>> get statefulDisk =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stateful_disk');

  /// Reference to `stateful_external_ip` attribute.
  TfRef<List<Map<String, Object?>>> get statefulExternalIp =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stateful_external_ip');

  /// Reference to `stateful_internal_ip` attribute.
  TfRef<List<Map<String, Object?>>> get statefulInternalIp =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'stateful_internal_ip');

  /// Reference to `status` attribute.
  TfRef<List<Map<String, Object?>>> get status =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'status');

  /// Reference to `target_pools` attribute.
  TfRef<List<String>> get targetPools =>
      TfRef.attribute<List<String>>(this, 'target_pools');

  /// Reference to `target_size` attribute.
  TfRef<num> get targetSize => TfRef.attribute<num>(this, 'target_size');

  /// Reference to `target_size_policy` attribute.
  TfRef<List<Map<String, Object?>>> get targetSizePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'target_size_policy');

  /// Reference to `target_stopped_size` attribute.
  TfRef<num> get targetStoppedSize =>
      TfRef.attribute<num>(this, 'target_stopped_size');

  /// Reference to `target_suspended_size` attribute.
  TfRef<num> get targetSuspendedSize =>
      TfRef.attribute<num>(this, 'target_suspended_size');

  /// Reference to `update_policy` attribute.
  TfRef<List<Map<String, Object?>>> get updatePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'update_policy');

  /// Reference to `version` attribute.
  TfRef<List<Map<String, Object?>>> get version =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'version');

  /// Reference to `wait_for_instances` attribute.
  TfRef<bool> get waitForInstances =>
      TfRef.attribute<bool>(this, 'wait_for_instances');

  /// Reference to `wait_for_instances_status` attribute.
  TfRef<String> get waitForInstancesStatus =>
      TfRef.attribute<String>(this, 'wait_for_instances_status');
}
