// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../scc/google_scc_v2_organization_source.dart'
    show GoogleSccV2OrganizationSource;

/// Sensitive field paths for `google_scc_v2_organization_source_iam_member`.
const Set<String> _googleSccV2OrganizationSourceIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_scc_v2_organization_source_iam_member` (derived from provider schema).
@immutable
final class SccV2OrganizationSourceIamMemberCondition {
  const SccV2OrganizationSourceIamMemberCondition({
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

/// Factory wrapper for `google_scc_v2_organization_source_iam_member`.
final class GoogleSccV2OrganizationSourceIamMember extends Resource {
  static const String tfType = 'google_scc_v2_organization_source_iam_member';

  GoogleSccV2OrganizationSourceIamMember(
    super.localName, {
    required RefTo<GoogleSccV2OrganizationSource> source,
    TfArg<String>? organization,
    required TfArg<String> role,
    required IamPrincipal member,
    SccV2OrganizationSourceIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source.encodeAs('name'),
           'organization': ?(organization ?? source.alsoAs('organization')),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2OrganizationSourceIamMember>`.
  RefTo<GoogleSccV2OrganizationSourceIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
