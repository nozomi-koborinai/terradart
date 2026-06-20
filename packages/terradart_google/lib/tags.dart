// packages/terradart_google/lib/tags.dart
/// Resource Manager Tags — tag keys, tag values, resource bindings, and the
/// `*_iam_member` adjuncts that grant access on individual tag keys/values.
library;

export 'src/tags/google_tags_tag_key.dart' show GoogleTagsTagKey;
export 'src/tags/google_tags_tag_value.dart' show GoogleTagsTagValue;
export 'src/tags/google_tags_tag_binding.dart' show GoogleTagsTagBinding;
export 'src/tags/google_tags_tag_key_iam_member.dart'
    show GoogleTagsTagKeyIamMember;
export 'src/tags/google_tags_tag_value_iam_member.dart'
    show GoogleTagsTagValueIamMember;
