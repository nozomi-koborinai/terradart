// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../privateca/google_privateca_certificate_template.dart'
    show GooglePrivatecaCertificateTemplate;

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

  GooglePrivatecaCertificateTemplateIamPolicy(
    super.localName, {
    required RefTo<GooglePrivatecaCertificateTemplate> certificateTemplate,
    TfArg<String>? location,
    required TfArg<String> policyData,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_template': certificateTemplate.encodeAs('name'),
           'location': ?(location ?? certificateTemplate.alsoAs('location')),
           'policy_data': policyData,
           'project': ?(project ?? certificateTemplate.alsoAs('project')),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateIamPolicySensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCertificateTemplateIamPolicy>`.
  RefTo<GooglePrivatecaCertificateTemplateIamPolicy> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `certificate_template` attribute.
  TfRef<String> get certificateTemplate =>
      TfRef.attribute<String>(this, 'certificate_template');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `policy_data` attribute.
  TfRef<String> get policyData => TfRef.attribute<String>(this, 'policy_data');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
