// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_os_config_os_policy_assignment`.
const Set<String> _googleOsConfigOsPolicyAssignmentSensitive = <String>{};

/// Factory wrapper for `google_os_config_os_policy_assignment`.
///
/// OS Config OS policy assignment — bundles OS policies and rolls them out
/// to a filtered set of VM instances in a zone.
///
/// Enable `osconfig.googleapis.com` via [GoogleProjectService] before apply.
/// Requires `location` (zone), `name`, `os_policies`, `instance_filter`, and
/// `rollout` blocks.
///
/// Example:
/// ```dart
/// GoogleOsConfigOsPolicyAssignment(
///   localName: 'baseline',
///   name: TfArg.literal('baseline-policies'),
///   location: TfArg.literal('us-central1-a'),
///   osPolicies: [/* OsConfigOsPolicyAssignmentOsPolicies helpers */],
///   instanceFilter: OsConfigOsPolicyAssignmentInstanceFilter(
///     all: TfArg.literal(true),
///   ),
///   rollout: OsConfigOsPolicyAssignmentRollout(
///     disruptionBudget: OsConfigOsPolicyAssignmentRolloutDisruptionBudget(
///       percent: TfArg.literal(100),
///     ),
///     minWaitDuration: TfArg.literal('0s'),
///   ),
/// );
/// ```
final class GoogleOsConfigOsPolicyAssignment extends Resource {
  static const String tfType = 'google_os_config_os_policy_assignment';

  GoogleOsConfigOsPolicyAssignment({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required TfArg<List<Map<String, dynamic>>> osPolicies,
    required TfArg<Map<String, dynamic>> instanceFilter,
    required TfArg<Map<String, dynamic>> rollout,
    TfArg<String>? description,
    TfArg<String>? project,
    TfArg<String>? deletionPolicy,
    TfArg<bool>? skipAwaitRollout,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'os_policies': osPolicies,
           'instance_filter': instanceFilter,
           'rollout': rollout,
           if (description != null) 'description': description,
           if (project != null) 'project': project,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (skipAwaitRollout != null) 'skip_await_rollout': skipAwaitRollout,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOsConfigOsPolicyAssignmentSensitive;

  /// Reference to `baseline` attribute.
  TfRef<bool> get baseline => TfRef.attribute<bool>(this, 'baseline');

  /// Reference to `deleted` attribute.
  TfRef<bool> get deleted => TfRef.attribute<bool>(this, 'deleted');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `reconciling` attribute.
  TfRef<bool> get reconciling => TfRef.attribute<bool>(this, 'reconciling');

  /// Reference to `revision_create_time` attribute.
  TfRef<String> get revisionCreateTime =>
      TfRef.attribute<String>(this, 'revision_create_time');

  /// Reference to `revision_id` attribute.
  TfRef<String> get revisionId => TfRef.attribute<String>(this, 'revision_id');

  /// Reference to `rollout_state` attribute.
  TfRef<String> get rolloutState =>
      TfRef.attribute<String>(this, 'rollout_state');

  /// Reference to `uid` attribute.
  TfRef<String> get uid => TfRef.attribute<String>(this, 'uid');

  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
