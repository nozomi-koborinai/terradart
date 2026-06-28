// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

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
    required TfArg<String> tagValue,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {'parent': parent, 'tag_value': tagValue},
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagBindingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
