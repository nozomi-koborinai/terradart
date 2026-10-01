// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../tags/google_tags_tag_key.dart' show GoogleTagsTagKey;

/// Sensitive field paths for `google_tags_tag_key_iam_member`.
const Set<String> _googleTagsTagKeyIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_tags_tag_key_iam_member` (derived from provider schema).
@immutable
final class TagsTagKeyIamMemberCondition {
  const TagsTagKeyIamMemberCondition({
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

/// Factory wrapper for `google_tags_tag_key_iam_member`.
final class GoogleTagsTagKeyIamMember extends Resource {
  static const String tfType = 'google_tags_tag_key_iam_member';

  GoogleTagsTagKeyIamMember({
    required super.localName,
    required RefTo<GoogleTagsTagKey> tagKey,
    required TfArg<String> role,
    required IamPrincipal member,
    TagsTagKeyIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_key': tagKey.encodeAs('id'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeyIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagKeyIamMember>`.
  RefTo<GoogleTagsTagKeyIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `member` attribute.
  TfRef<String> get member => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `tag_key` attribute.
  TfRef<String> get tagKey => TfRef.attribute<String>(this, 'tag_key');
}
