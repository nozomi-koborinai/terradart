// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_value`.
const Set<String> _googleTagsTagValueSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_value`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleTagsTagValue extends Data {
  static const String tfType = 'google_tags_tag_value';

  DataGoogleTagsTagValue({
    required super.localName,
    required TfArg<String> parent,
    required TfArg<String> shortName,
  }) : super(
         terraformType: tfType,
         argMap: {'parent': parent, 'short_name': shortName},
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagValueSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `create_time` attribute.
  TfRef<String> get createTime => TfRef.attribute<String>(this, 'create_time');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `namespaced_name` attribute.
  TfRef<String> get namespacedName =>
      TfRef.attribute<String>(this, 'namespaced_name');

  /// Reference to `update_time` attribute.
  TfRef<String> get updateTime => TfRef.attribute<String>(this, 'update_time');
}
