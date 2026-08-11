// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate_template_iam_policy`.
const Set<String> _googlePrivatecaCertificateTemplateIamPolicySensitive =
    <String>{};

/// Factory wrapper for `google_privateca_certificate_template_iam_policy`.
///
/// Authoritative IAM policy for a Private CA certificate template.
///
/// `policy_data` replaces the entire IAM policy, overwriting grants made
/// outside Terraform. Prefer [GooglePrivatecaCertificateTemplateIamMember] for single-principal grants.
final class GooglePrivatecaCertificateTemplateIamPolicy extends Resource {
  static const String tfType =
      'google_privateca_certificate_template_iam_policy';

  GooglePrivatecaCertificateTemplateIamPolicy({
    required super.localName,
    required TfArg<String> certificateTemplate,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_template': certificateTemplate,
           if (location != null) 'location': location,
           'policy_data': policyData,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateIamPolicySensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
