// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_organization_iam_binding`.
const Set<String> _googleOrganizationIamBindingSensitive = <String>{};

/// Factory wrapper for `google_organization_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a GCP organization.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleOrganizationIamMember] for additive grants.
final class GoogleOrganizationIamBinding extends Resource {
  static const String tfType = 'google_organization_iam_binding';

  GoogleOrganizationIamBinding({
    required super.localName,
    required TfArg<String> orgId,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'org_id': orgId,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleOrganizationIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
