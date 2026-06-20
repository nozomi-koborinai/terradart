// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_value`.
const Set<String> _googleTagsTagValueSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value`.
final class GoogleTagsTagValue extends Resource {
  static const String tfType = 'google_tags_tag_value';

  GoogleTagsTagValue({
    required super.localName,
    required TfArg<String> shortName,
    required TfArg<String> parent,
    TfArg<String>? description,
    TfArg<String>? deletionPolicy,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'short_name': shortName,
           'parent': parent,
           if (description != null) 'description': description,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueSensitive;

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
}
