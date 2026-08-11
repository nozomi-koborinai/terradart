// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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

  GoogleComputeInstanceTemplateIamPolicy({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleComputeInstanceTemplateIamPolicySensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
