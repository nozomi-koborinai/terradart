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
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           'full_resource_name': fullResourceName,
           'location': ?location,
           'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleTagsTagBindingCollectionSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleTagsTagBindingCollection>`.
  RefTo<GoogleTagsTagBindingCollection> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `active_tags` attribute.
  TfRef<Map<String, String>> get activeTags =>
      TfRef.attribute<Map<String, String>>(this, 'active_tags');
}
