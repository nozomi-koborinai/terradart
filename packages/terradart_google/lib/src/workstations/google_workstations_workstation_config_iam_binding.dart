// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation_config_iam_binding`.
const Set<String> _googleWorkstationsWorkstationConfigIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_workstations_workstation_config_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Workstations
/// config.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleWorkstationsWorkstationConfigIamMember] for additive grants.
/// Deferred with the never_apply workstation cluster (no apply-smoke
/// quickstart).
final class GoogleWorkstationsWorkstationConfigIamBinding extends Resource {
  static const String tfType =
      'google_workstations_workstation_config_iam_binding';

  GoogleWorkstationsWorkstationConfigIamBinding({
    required super.localName,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'role': role,
           'members': members,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
