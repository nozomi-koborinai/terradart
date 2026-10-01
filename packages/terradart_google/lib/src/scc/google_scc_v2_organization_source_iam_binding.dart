// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../scc/google_scc_v2_organization_source.dart'
    show GoogleSccV2OrganizationSource;

/// Sensitive field paths for `google_scc_v2_organization_source_iam_binding`.
const Set<String> _googleSccV2OrganizationSourceIamBindingSensitive =
    <String>{};

/// Typed helper for the `condition` block of
/// `google_scc_v2_organization_source_iam_binding` (derived from provider schema).
@immutable
final class SccV2OrganizationSourceIamBindingCondition {
  const SccV2OrganizationSourceIamBindingCondition({
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

/// Factory wrapper for `google_scc_v2_organization_source_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Security Command Center v2 organization source.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleSccV2OrganizationSourceIamMember] for additive grants.
final class GoogleSccV2OrganizationSourceIamBinding extends Resource {
  static const String tfType = 'google_scc_v2_organization_source_iam_binding';

  GoogleSccV2OrganizationSourceIamBinding(
    super.localName, {
    required RefTo<GoogleSccV2OrganizationSource> source,
    TfArg<String>? organization,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    SccV2OrganizationSourceIamBindingCondition? condition,
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
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleSccV2OrganizationSourceIamBinding>`.
  RefTo<GoogleSccV2OrganizationSourceIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `organization` attribute.
  TfRef<String> get organization =>
      TfRef.attribute<String>(this, 'organization');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `source` attribute.
  TfRef<String> get source => TfRef.attribute<String>(this, 'source');
}
