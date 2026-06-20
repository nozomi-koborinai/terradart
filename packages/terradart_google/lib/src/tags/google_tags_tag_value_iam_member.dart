// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_value_iam_member`.
const Set<String> _googleTagsTagValueIamMemberSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value_iam_member`.
final class GoogleTagsTagValueIamMember extends Resource {
  static const String tfType = 'google_tags_tag_value_iam_member';

  GoogleTagsTagValueIamMember({
    required super.localName,
    required TfArg<String> tagValue,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_value': tagValue,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
