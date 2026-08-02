// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_clouddeploy_custom_target_type_iam_policy`.
const Set<String> _googleClouddeployCustomTargetTypeIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_clouddeploy_custom_target_type_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Deploy custom target type.
///
/// `policy_data` replaces the entire IAM policy. Prefer
/// [GoogleClouddeployCustomTargetTypeIamMember] for single-principal grants.
final class GoogleClouddeployCustomTargetTypeIamPolicy extends Resource {
  static const String tfType =
      'google_clouddeploy_custom_target_type_iam_policy';

  GoogleClouddeployCustomTargetTypeIamPolicy({
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
  Set<String> get sensitiveFields =>
      _googleClouddeployCustomTargetTypeIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
