// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation_iam_binding`.
const Set<String> _googleWorkstationsWorkstationIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_workstations_workstation_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Workstations
/// workstation.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleWorkstationsWorkstationIamMember] for additive grants.
/// Deferred with the never_apply workstation cluster (no apply-smoke
/// quickstart).
final class GoogleWorkstationsWorkstationIamBinding extends Resource {
  static const String tfType = 'google_workstations_workstation_iam_binding';

  GoogleWorkstationsWorkstationIamBinding({
    required super.localName,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> workstationId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'workstation_id': workstationId,
           'role': role,
           'members': members,
           'location': ?location,
           'project': ?project,
           'condition': ?condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationIamBinding>`.
  RefTo<GoogleWorkstationsWorkstationIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get membersRef =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterIdRef =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigIdRef =>
      TfRef.attribute<String>(this, 'workstation_config_id');

  /// Reference to `workstation_id` attribute.
  TfRef<String> get workstationIdRef =>
      TfRef.attribute<String>(this, 'workstation_id');
}
