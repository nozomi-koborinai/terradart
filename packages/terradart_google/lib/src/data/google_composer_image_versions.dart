// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_composer_image_versions`.
const Set<String> _googleComposerImageVersionsSensitive = <String>{};

/// Factory wrapper for `google_composer_image_versions`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComposerImageVersions extends Data {
  static const String tfType = 'google_composer_image_versions';

  DataGoogleComposerImageVersions({
    required super.localName,
    TfArg<String>? project,
    TfArg<String>? region,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (project != null) 'project': project,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComposerImageVersionsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `image_versions` attribute.
  TfRef<List<Map<String, Object?>>> get imageVersions =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'image_versions');
}
