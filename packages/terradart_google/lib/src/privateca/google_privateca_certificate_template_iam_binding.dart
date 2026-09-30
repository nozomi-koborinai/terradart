// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

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

  GooglePrivatecaCertificateTemplateIamBinding({
    required super.localName,
    required TfArg<String> certificateTemplate,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<String>? project,
    PrivatecaCertificateTemplateIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'certificate_template': certificateTemplate,
           'location': ?location,
           'role': role,
           'members': members,
           'project': ?project,
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
}
