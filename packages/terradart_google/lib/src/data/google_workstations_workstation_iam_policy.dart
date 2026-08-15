// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_workstations_workstation_iam_policy`.
const Set<String> _googleWorkstationsWorkstationIamPolicySensitive = <String>{};

/// Factory wrapper for `google_workstations_workstation_iam_policy`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleWorkstationsWorkstationIamPolicy extends Data {
  static const String tfType = 'google_workstations_workstation_iam_policy';

  DataGoogleWorkstationsWorkstationIamPolicy({
    required super.localName,
    TfArg<String>? location,
    TfArg<String>? project,
    required TfArg<String> workstationClusterId,
    required TfArg<String> workstationConfigId,
    required TfArg<String> workstationId,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (location != null) 'location': location,
           if (project != null) 'project': project,
           'workstation_cluster_id': workstationClusterId,
           'workstation_config_id': workstationConfigId,
           'workstation_id': workstationId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleWorkstationsWorkstationIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');
}
