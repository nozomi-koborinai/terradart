// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_key_iam_member`.
const Set<String> _googleTagsTagKeyIamMemberSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_key_iam_member`.
final class GoogleTagsTagKeyIamMember extends Resource {
  static const String tfType = 'google_tags_tag_key_iam_member';

  GoogleTagsTagKeyIamMember({
    required super.localName,
    required TfArg<String> tagKey,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_key': tagKey,
           'role': role,
           'member': member,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeyIamMemberSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
