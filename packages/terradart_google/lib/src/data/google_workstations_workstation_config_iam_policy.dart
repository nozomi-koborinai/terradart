// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../workstations/google_workstations_workstation_config_iam_policy.dart';

/// Sensitive field paths for `google_workstations_workstation_config_iam_policy`.
const Set<String> _googleWorkstationsWorkstationConfigIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_workstations_workstation_config_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleWorkstationsWorkstationConfigIamPolicy extends Data {
  static const String tfType =
      'google_workstations_workstation_config_iam_policy';

  DataGoogleWorkstationsWorkstationConfigIamPolicy(
    super.localName, {
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?location,
           'project': ?project,
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationConfigIamPolicySensitive;

  /// A reference to the `google_workstations_workstation_config_iam_policy` this data source reads, for
  /// arguments typed `RefTo<GoogleWorkstationsWorkstationConfigIamPolicy>`.
  RefTo<GoogleWorkstationsWorkstationConfigIamPolicy> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `workstation_cluster_id` attribute.
  TfRef<String> get workstationClusterId =>
      TfRef.attribute<String>(this, 'workstation_cluster_id');

  /// Reference to `workstation_config_id` attribute.
  TfRef<String> get workstationConfigId =>
      TfRef.attribute<String>(this, 'workstation_config_id');
}
