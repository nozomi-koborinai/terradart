// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../cloud_run/google_cloud_run_v2_instance.dart'
    show GoogleCloudRunV2Instance;

/// Sensitive field paths for `google_cloud_run_v2_instance_iam_policy`.
const Set<String> _googleCloudRunV2InstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_cloud_run_v2_instance_iam_policy`.
///
/// Authoritative IAM policy.
///
/// Replaces the entire IAM policy, overwriting grants
/// made outside this stack. Prefer the additive
/// `google_cloud_run_v2_instance_iam_member` for single grants.
final class GoogleCloudRunV2InstanceIamPolicy extends Resource {
  static const String tfType = 'google_cloud_run_v2_instance_iam_policy';

  GoogleCloudRunV2InstanceIamPolicy(
    super.localName, {
    TfArg<String>? location,
    required RefTo<GoogleCloudRunV2Instance> instance,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'location': ?(location ?? instance.alsoAs('location')),
           'name': instance.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleCloudRunV2InstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleCloudRunV2InstanceIamPolicy>`.
  RefTo<GoogleCloudRunV2InstanceIamPolicy> get ref => RefTo.of(this);

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
