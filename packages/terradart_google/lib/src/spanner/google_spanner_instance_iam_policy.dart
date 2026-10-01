// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../spanner/google_spanner_instance.dart' show GoogleSpannerInstance;

/// Sensitive field paths for `google_spanner_instance_iam_policy`.
const Set<String> _googleSpannerInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_spanner_instance_iam_policy`.
///
/// Authoritative IAM policy for a Spanner instance.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleSpannerInstanceIamMember] for single-principal grants.
final class GoogleSpannerInstanceIamPolicy extends Resource {
  static const String tfType = 'google_spanner_instance_iam_policy';

  GoogleSpannerInstanceIamPolicy(
    super.localName, {
    required RefTo<GoogleSpannerInstance> instance,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'instance': instance.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleSpannerInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSpannerInstanceIamPolicy>`.
  RefTo<GoogleSpannerInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `instance` attribute.
  TfRef<String> get instance => TfRef.attribute<String>(this, 'instance');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
