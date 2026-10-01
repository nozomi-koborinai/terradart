// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../clouddeploy/google_clouddeploy_target.dart'
    show GoogleClouddeployTarget;

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
    required RefTo<GoogleClouddeployTarget> target,
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
           'name': target.encodeAs('name'),
           'policy_data': policyData,
           'location': ?(location ?? target.alsoAs('location')),
           'project': ?(project ?? target.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleClouddeployTargetIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleClouddeployTargetIamPolicy>`.
  RefTo<GoogleClouddeployTargetIamPolicy> get ref => RefTo.of(this);

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
