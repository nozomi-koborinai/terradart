// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../clouddeploy/google_clouddeploy_custom_target_type.dart'
    show GoogleClouddeployCustomTargetType;

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
    required RefTo<GoogleClouddeployCustomTargetType> customTargetType,
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
           'name': customTargetType.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? customTargetType.alsoAs('location')),
           'project': ?(project ?? customTargetType.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleClouddeployCustomTargetTypeIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployCustomTargetTypeIamPolicy>`.
  RefTo<GoogleClouddeployCustomTargetTypeIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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
}
