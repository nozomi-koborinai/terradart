// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_privateca_certificate_template`.
const Set<String> _googlePrivatecaCertificateTemplateSensitive = <String>{};

/// `identity_constraints.cel_expression` block.
final class PrivatecaCertificateTemplateCelExpression {
  const PrivatecaCertificateTemplateCelExpression({
    this.description,
    this.expression,
    this.location,
    this.title,
  });

  final TfArg<String>? description;
  final TfArg<String>? expression;
  final TfArg<String>? location;
  final TfArg<String>? title;

  Map<String, Object?> encode() => {
    if (description != null) 'description': description,
    if (expression != null) 'expression': expression,
    if (location != null) 'location': location,
    if (title != null) 'title': title,
  };
}

/// `identity_constraints` block — subject / SAN passthrough policy.
final class PrivatecaCertificateTemplateIdentityConstraints {
  const PrivatecaCertificateTemplateIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  final TfArg<bool> allowSubjectAltNamesPassthrough;
  final TfArg<bool> allowSubjectPassthrough;
  final PrivatecaCertificateTemplateCelExpression? celExpression;

  Map<String, Object?> encode() => {
    'allow_subject_alt_names_passthrough': allowSubjectAltNamesPassthrough,
    'allow_subject_passthrough': allowSubjectPassthrough,
    if (celExpression != null) 'cel_expression': [celExpression!.encode()],
  };
}

/// Factory wrapper for `google_privateca_certificate_template`.
///
/// Certificate Authority Service (CAS) certificate template — reusable X.509
/// profile constraints for [GooglePrivatecaCertificate] issuance.
///
/// Required identity:
/// - [localName]: Terraform local name.
/// - [name]: template ID.
/// - [location]: regional location (match the target CA pool).
/// - [identityConstraints]: subject / SAN passthrough policy + CEL guard.
///
/// Example (permissive template for a DEVOPS/ENTERPRISE pool):
/// ```dart
/// GooglePrivatecaCertificateTemplate(
///   localName: 'leaf_template',
///   name: TfArg.literal('app-leaf-template'),
///   location: TfArg.literal('us-central1'),
///   identityConstraints: PrivatecaCertificateTemplateIdentityConstraints(
///     allowSubjectAltNamesPassthrough: TfArg.literal(true),
///     allowSubjectPassthrough: TfArg.literal(true),
///     celExpression: PrivatecaCertificateTemplateCelExpression(
///       expression: TfArg.literal('true'),
///       title: TfArg.literal('allow-all'),
///       location: TfArg.literal('any.file.anywhere'),
///       description: TfArg.literal('Always true'),
///     ),
///   ),
/// );
/// ```
final class GooglePrivatecaCertificateTemplate extends Resource {
  static const String tfType = 'google_privateca_certificate_template';

  GooglePrivatecaCertificateTemplate({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> location,
    required PrivatecaCertificateTemplateIdentityConstraints
    identityConstraints,
    TfArg<String>? description,
    TfArg<String>? maximumLifetime,
    TfArg<Map<String, String>>? labels,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'location': location,
           'identity_constraints': TfArg.literal([
             identityConstraints.encode(),
           ]),
           if (description != null) 'description': description,
           if (maximumLifetime != null) 'maximum_lifetime': maximumLifetime,
           if (labels != null) 'labels': labels,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `effective_labels` attribute.
  TfRef<Map<String, String>> get effectiveLabels =>
      TfRef.attribute<Map<String, String>>(this, 'effective_labels');

  /// Reference to `terraform_labels` attribute.
  TfRef<Map<String, String>> get terraformLabels =>
      TfRef.attribute<Map<String, String>>(this, 'terraform_labels');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
