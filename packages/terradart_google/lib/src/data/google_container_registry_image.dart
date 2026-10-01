// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_container_registry_image`.
const Set<String> _googleContainerRegistryImageSensitive = <String>{};

/// Factory wrapper for `google_container_registry_image`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleContainerRegistryImage extends Data {
  static const String tfType = 'google_container_registry_image';

  DataGoogleContainerRegistryImage(
    super.localName, {
    TfArg<String>? digest,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? tag,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'digest': ?digest,
           'name': name,
           'project': ?project,
           'region': ?region,
           'tag': ?tag,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerRegistryImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `image_url` attribute.
  TfRef<String> get imageUrl => TfRef.attribute<String>(this, 'image_url');

  /// Reference to `digest` attribute.
  TfRef<String> get digest => TfRef.attribute<String>(this, 'digest');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tag` attribute.
  TfRef<String> get tag => TfRef.attribute<String>(this, 'tag');
}
