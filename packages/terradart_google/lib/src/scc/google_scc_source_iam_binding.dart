// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_scc_source_iam_binding`.
const Set<String> _googleSccSourceIamBindingSensitive = <String>{};

/// Factory wrapper for `google_scc_source_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Security Command Center source.
///
/// Replaces the entire member list for that role, overwriting grants made
/// outside Terraform. Prefer [GoogleSccSourceIamMember] for additive grants.
final class GoogleSccSourceIamBinding extends Resource {
  static const String tfType = 'google_scc_source_iam_binding';

  GoogleSccSourceIamBinding({
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
  Set<String> get sensitiveFields => _googleSccSourceIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
