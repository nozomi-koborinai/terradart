// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../data_fusion/google_data_fusion_instance.dart'
    show GoogleDataFusionInstance;

/// Sensitive field paths for `google_data_fusion_instance_iam_policy`.
const Set<String> _googleDataFusionInstanceIamPolicySensitive = <String>{};

/// Factory wrapper for `google_data_fusion_instance_iam_policy`.
///
/// Authoritative IAM policy for a Cloud Data Fusion instance.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleDataFusionInstanceIamMember] for single-principal grants.
final class GoogleDataFusionInstanceIamPolicy extends Resource {
  static const String tfType = 'google_data_fusion_instance_iam_policy';

  GoogleDataFusionInstanceIamPolicy(
    super.localName, {
    required RefTo<GoogleDataFusionInstance> instance,
    required TfArg<String> policyData,
    TfArg<String>? region,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instance.encodeAs('name'),
           'policy_data': policyData,
           'region': ?(region ?? instance.alsoAs('region')),
           'project': ?(project ?? instance.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleDataFusionInstanceIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleDataFusionInstanceIamPolicy>`.
  RefTo<GoogleDataFusionInstanceIamPolicy> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
