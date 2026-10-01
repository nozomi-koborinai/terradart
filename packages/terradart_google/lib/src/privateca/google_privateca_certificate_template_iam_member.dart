// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../privateca/google_privateca_certificate_template.dart'
    show GooglePrivatecaCertificateTemplate;

/// Sensitive field paths for `google_privateca_certificate_template_iam_member`.
const Set<String> _googlePrivatecaCertificateTemplateIamMemberSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_privateca_certificate_template_iam_member` (derived from provider schema).
@immutable
final class PrivatecaCertificateTemplateIamMemberCondition {
  const PrivatecaCertificateTemplateIamMemberCondition({
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

/// Factory wrapper for `google_privateca_certificate_template_iam_member`.
final class GooglePrivatecaCertificateTemplateIamMember extends Resource {
  static const String tfType =
      'google_privateca_certificate_template_iam_member';

  GooglePrivatecaCertificateTemplateIamMember({
    required super.localName,
    required RefTo<GooglePrivatecaCertificateTemplate> certificateTemplate,
    TfArg<String>? location,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? project,
    PrivatecaCertificateTemplateIamMemberCondition? condition,
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
           'member': member,
           'project': ?(project ?? certificateTemplate.alsoAs('project')),
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googlePrivatecaCertificateTemplateIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GooglePrivatecaCertificateTemplateIamMember>`.
  RefTo<GooglePrivatecaCertificateTemplateIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `certificate_template` attribute.
  TfRef<String> get certificateTemplateRef =>
      TfRef.attribute<String>(this, 'certificate_template');

  /// Reference to `location` attribute.
  TfRef<String> get locationRef => TfRef.attribute<String>(this, 'location');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `project` attribute.
  TfRef<String> get projectRef => TfRef.attribute<String>(this, 'project');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
