// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../workstations/google_workstations_workstation_config.dart'
    show GoogleWorkstationsWorkstationConfig;

/// Sensitive field paths for `google_workstations_workstation_config_iam_policy`.
const Set<String> _googleWorkstationsWorkstationConfigIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_workstations_workstation_config_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Workstations config.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleWorkstationsWorkstationConfigIamMember] for single-principal
/// grants. Deferred with the never_apply workstation cluster (no
/// apply-smoke quickstart).
final class GoogleWorkstationsWorkstationConfigIamPolicy extends Resource {
  static const String tfType =
      'google_workstations_workstation_config_iam_policy';

  GoogleWorkstationsWorkstationConfigIamPolicy(
    super.localName, {
    TfArg<String>? workstationClusterId,
    required RefTo<GoogleWorkstationsWorkstationConfig> workstationConfig,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'workstation_cluster_id':
               ?(workstationClusterId ??
               workstationConfig.alsoAs('workstation_cluster_id')),
           'workstation_config_id': workstationConfig.encodeAs(
             'workstation_config_id',
           ),
           'policy_data': policyData,
           'location': ?(location ?? workstationConfig.alsoAs('location')),
           'project': ?(project ?? workstationConfig.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleWorkstationsWorkstationConfigIamPolicy>`.
  RefTo<GoogleWorkstationsWorkstationConfigIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterId =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigId =>
      TfRef.attribute<String>(this, 'workstation_config_id');
}
