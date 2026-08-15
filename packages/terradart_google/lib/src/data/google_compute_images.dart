// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_images`.
const Set<String> _googleComputeImagesSensitive = <String>{};

/// Factory wrapper for `google_compute_images`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleComputeImages extends Data {
  static const String tfType = 'google_compute_images';

  DataGoogleComputeImages({
    required super.localName,
    TfArg<String>? filter,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (filter != null) 'filter': filter,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeImagesSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `images` attribute.
  TfRef<List<Map<String, Object?>>> get images =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'images');
}
