// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_target_iam_policy`.
const Set<String> _googleClouddeployTargetIamPolicySensitive = <String>{};

/// Factory wrapper for `google_clouddeploy_target_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Deploy target.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleClouddeployTargetIamMember] for single-principal grants.
final class GoogleClouddeployTargetIamPolicy extends Resource {
  static const String tfType = 'google_clouddeploy_target_iam_policy';

  GoogleClouddeployTargetIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (location != null) 'location': location,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployTargetIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
