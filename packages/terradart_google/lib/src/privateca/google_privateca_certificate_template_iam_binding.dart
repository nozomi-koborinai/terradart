// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate_template_iam_binding`.
const Set<String> _googlePrivatecaCertificateTemplateIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_privateca_certificate_template_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Private CA certificate template.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GooglePrivatecaCertificateTemplateIamMember] for additive grants.
final class GooglePrivatecaCertificateTemplateIamBinding extends Resource {
  static const String tfType =
      'google_privateca_certificate_template_iam_binding';

  GooglePrivatecaCertificateTemplateIamBinding({
    required super.localName,
    required TfArg<String> certificateTemplate,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_template': certificateTemplate,
           if (location != null) 'location': location,
           'role': role,
           'members': members,
           if (project != null) 'project': project,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
