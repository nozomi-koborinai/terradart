// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../compute/google_compute_instance_template.dart'
    show GoogleComputeInstanceTemplate;

/// Sensitive field paths for `google_compute_instance_template_iam_policy`.
const Set<String> _googleComputeInstanceTemplateIamPolicySensitive = <String>{};

/// Factory wrapper for `google_compute_instance_template_iam_policy`.
///
/// Authoritative IAM policy for a Compute Engine instance template.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GoogleComputeInstanceTemplateIamMember] for single-principal grants.
final class GoogleComputeInstanceTemplateIamPolicy extends Resource {
  static const String tfType = 'google_compute_instance_template_iam_policy';

  GoogleComputeInstanceTemplateIamPolicy(
    super.localName, {
    required RefTo<GoogleComputeInstanceTemplate> instanceTemplate,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': instanceTemplate.encodeAs('name'),
           'policy_data': policyData,
           'project': ?(project ?? instanceTemplate.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceTemplateIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleComputeInstanceTemplateIamPolicy>`.
  RefTo<GoogleComputeInstanceTemplateIamPolicy> get ref => RefTo.of(this);

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
}
