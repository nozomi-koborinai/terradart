// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_keys`.
const Set<String> _googleTagsTagKeysSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_keys`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleTagsTagKeys extends Data {
  static const String tfType = 'google_tags_tag_keys';

  DataGoogleTagsTagKeys({
    required super.localName,
    required TfArg<String> parent,
  }) : super(terraformType: tfType, argMap: {'parent': parent});

  @override
  Set<String> get sensitiveFields => _googleTagsTagKeysSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `keys` attribute.
  TfRef<List<Map<String, Object?>>> get keys =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'keys');
}
