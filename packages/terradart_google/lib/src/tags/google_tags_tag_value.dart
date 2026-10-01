// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../tags/google_tags_tag_key.dart' show GoogleTagsTagKey;

/// Sensitive field paths for `google_tags_tag_value`.
const Set<String> _googleTagsTagValueSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value`.
///
/// A TagValue is a child of a particular TagKey. TagValues are used to group
/// cloud resources for the purpose of controlling them using policies.
final class GoogleTagsTagValue extends Resource {
  static const String tfType = 'google_tags_tag_value';

  GoogleTagsTagValue({
    required super.localName,
    required TfArg<String> shortName,
    required RefTo<GoogleTagsTagKey> parent,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'short_name': shortName,
           'parent': parent.encodeAs('id'),
           'description': ?description,
           'deletion_policy': ?deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagValue>`.
  RefTo<GoogleTagsTagValue> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `namespaced_name` attribute.
  TfRef<String> get namespacedName =>
      TfRef.attribute<String>(this, 'namespaced_name');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `description` attribute.
  TfRef<String> get descriptionRef =>
      TfRef.attribute<String>(this, 'description');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `short_name` attribute.
  TfRef<String> get shortNameRef => TfRef.attribute<String>(this, 'short_name');
}
