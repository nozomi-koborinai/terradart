// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_value_iam_binding`.
const Set<String> _googleTagsTagValueIamBindingSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Resource Manager
/// tag value.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleTagsTagValueIamMember] for additive grants.
final class GoogleTagsTagValueIamBinding extends Resource {
  static const String tfType = 'google_tags_tag_value_iam_binding';

  GoogleTagsTagValueIamBinding({
    required super.localName,
    required TfArg<String> tagValue,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_value': tagValue,
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueIamBindingSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
