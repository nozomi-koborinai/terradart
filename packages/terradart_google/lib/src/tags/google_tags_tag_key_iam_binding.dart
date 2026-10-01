// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
import '../tags/google_tags_tag_key.dart' show GoogleTagsTagKey;

/// Sensitive field paths for `google_tags_tag_key_iam_binding`.
const Set<String> _googleTagsTagKeyIamBindingSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_tags_tag_key_iam_binding` (derived from provider schema).
@immutable
final class TagsTagKeyIamBindingCondition {
  const TagsTagKeyIamBindingCondition({
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

/// Factory wrapper for `google_tags_tag_key_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Resource Manager
/// tag key.
///
/// Replaces the entire member list for that role. Prefer
/// [GoogleTagsTagKeyIamMember] for additive grants.
final class GoogleTagsTagKeyIamBinding extends Resource {
  static const String tfType = 'google_tags_tag_key_iam_binding';

  GoogleTagsTagKeyIamBinding({
    required super.localName,
    required RefTo<GoogleTagsTagKey> tagKey,
    required TfArg<String> role,
    required TfArg<List<IamPrincipal>> members,
    TagsTagKeyIamBindingCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'tag_key': tagKey.encodeAs('id'),
           'role': role,
           'members': members,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeyIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagKeyIamBinding>`.
  RefTo<GoogleTagsTagKeyIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `members` attribute.
  TfRef<List<String>> get members =>
      TfRef.attribute<List<String>>(this, 'members');

  /// Reference to `role` attribute.
  TfRef<String> get role => TfRef.attribute<String>(this, 'role');

  /// Reference to `tag_key` attribute.
  TfRef<String> get tagKey => TfRef.attribute<String>(this, 'tag_key');
}
