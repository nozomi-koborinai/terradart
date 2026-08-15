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

  DataGoogleContainerRegistryImage({
    required super.localName,
    TfArg<String>? digest,
    required TfArg<String> name,
    TfArg<String>? project,
    TfArg<String>? region,
    TfArg<String>? tag,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (digest != null) 'digest': digest,
           'name': name,
           if (project != null) 'project': project,
           if (region != null) 'region': region,
           if (tag != null) 'tag': tag,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleContainerRegistryImageSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `image_url` attribute.
  TfRef<String> get imageUrl => TfRef.attribute<String>(this, 'image_url');
}
