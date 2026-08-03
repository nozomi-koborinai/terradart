// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation_iam_policy`.
const Set<String> _googleWorkstationsWorkstationIamPolicySensitive = <String>{};

/// Factory wrapper for `google_workstations_workstation_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Workstations workstation.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleWorkstationsWorkstationIamMember] for single-principal grants.
/// Deferred with the never_apply workstation cluster (no apply-smoke
/// quickstart).
final class GoogleWorkstationsWorkstationIamPolicy extends Resource {
  static const String tfType = 'google_workstations_workstation_iam_policy';

  GoogleWorkstationsWorkstationIamPolicy({
    required super.localName,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> workstationId,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'workstation_id': workstationId,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
