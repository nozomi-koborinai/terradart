// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_v2_organization_source_iam_binding`.
const Set<String> _googleSccV2OrganizationSourceIamBindingSensitive =
    <String>{};

/// Factory wrapper for `google_scc_v2_organization_source_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Security Command Center v2 organization source.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleSccV2OrganizationSourceIamMember] for additive grants.
final class GoogleSccV2OrganizationSourceIamBinding extends Resource {
  static const String tfType = 'google_scc_v2_organization_source_iam_binding';

  GoogleSccV2OrganizationSourceIamBinding({
    required super.localName,
    required TfArg<String> source,
    required TfArg<String> organization,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'source': source,
           'organization': organization,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleSccV2OrganizationSourceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
