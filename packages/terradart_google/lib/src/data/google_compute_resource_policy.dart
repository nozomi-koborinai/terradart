// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_resource_policy`.
const Set<String> _googleComputeResourcePolicySensitive = <String>{};

/// Factory wrapper for `google_compute_resource_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeResourcePolicy extends Data {
  static const String tfType = 'google_compute_resource_policy';

  DataGoogleComputeResourcePolicy({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeResourcePolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `disk_consistency_group_policy` attribute.
  TfRef<List<Map<String, Object?>>> get diskConsistencyGroupPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'disk_consistency_group_policy',
      );

  /// Reference to `group_placement_policy` attribute.
  TfRef<List<Map<String, Object?>>> get groupPlacementPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'group_placement_policy',
      );

  /// Reference to `instance_schedule_policy` attribute.
  TfRef<List<Map<String, Object?>>> get instanceSchedulePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'instance_schedule_policy',
      );

  /// Reference to `self_link` attribute.
  TfRef<String> get selfLink => TfRef.attribute<String>(this, 'self_link');

  /// Reference to `snapshot_schedule_policy` attribute.
  TfRef<List<Map<String, Object?>>> get snapshotSchedulePolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'snapshot_schedule_policy',
      );

  /// Reference to `workload_policy` attribute.
  TfRef<List<Map<String, Object?>>> get workloadPolicy =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'workload_policy');
}
