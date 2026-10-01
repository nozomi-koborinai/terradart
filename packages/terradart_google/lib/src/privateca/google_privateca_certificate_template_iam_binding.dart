// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../privateca/google_privateca_certificate_template.dart'
    show GooglePrivatecaCertificateTemplate;

/// Sensitive field paths for `google_privateca_certificate_template_iam_binding`.
const Set<String> _googlePrivatecaCertificateTemplateIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_privateca_certificate_template_iam_binding` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplateIamBindingCondition {
  const PrivatecaCertificateTemplateIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_privateca_certificate_template_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Private CA certificate template.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GooglePrivatecaCertificateTemplateIamMember] for additive grants.
final class GooglePrivatecaCertificateTemplateIamBinding extends Resource {
  static const String tfType =
      'google_privateca_certificate_template_iam_binding';

  GooglePrivatecaCertificateTemplateIamBinding(
    super.localName, {
    required RefTo<GooglePrivatecaCertificateTemplate> certificateTemplate,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TfArg<String>? project,
    PrivatecaCertificateTemplateIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_template': certificateTemplate.encodeAs('name'),
           'location': ?(location ?? certificateTemplate.alsoAs('location')),
           'role': role,
           'members': members,
           'project': ?(project ?? certificateTemplate.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCertificateTemplateIamBinding>`.
  RefTo<GooglePrivatecaCertificateTemplateIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `certificate_template` attribute.
  TfRef<String> get certificateTemplate =>
      TfRef.attribute<String>(this, 'certificate_template');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');
}
