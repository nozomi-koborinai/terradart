// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../tags/google_tags_tag_value.dart' show GoogleTagsTagValue;

/// Sensitive field paths for `google_tags_tag_binding`.
const Set<String> _googleTagsTagBindingSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_binding`.
///
/// A TagBinding represents a connection between a TagValue and a cloud resource
/// (currently project, folder, or organization). Once a TagBinding is created,
/// the TagValue is applied to all the descendants of the cloud resource.
final class GoogleTagsTagBinding extends Resource {
  static const String tfType = 'google_tags_tag_binding';

  GoogleTagsTagBinding({
    required super.localName,
    required TfArg<String> parent,
    required RefTo<GoogleTagsTagValue> tagValue,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'parent': parent, 'tag_value': tagValue.encodeAs('id')},
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagBinding>`.
  RefTo<GoogleTagsTagBinding> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicyRef =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `parent` attribute.
  TfRef<String> get parentRef => TfRef.attribute<String>(this, 'parent');

  /// Reference to `tag_value` attribute.
  TfRef<String> get tagValueRef => TfRef.attribute<String>(this, 'tag_value');
}
