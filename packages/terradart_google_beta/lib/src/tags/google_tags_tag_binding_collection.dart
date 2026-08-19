// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_tags_tag_binding_collection`.
const Set<String> _googleTagsTagBindingCollectionSensitive = <String>{};

/// Factory wrapper for `google_tags_tag_binding_collection`.
final class GoogleTagsTagBindingCollection extends Resource {
  static const String tfType = 'google_tags_tag_binding_collection';

  GoogleTagsTagBindingCollection({
    required super.localName,
    required TfArg<String> fullResourceName,
    TfArg<String>? location,
    required TfArg<Map<String, String>> tags,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         provider: 'google-beta',
         argMap: {
           'full_resource_name': fullResourceName,
           if (location != null) 'location': location,
           'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagBindingCollectionSensitive;
}
