// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_compute_project_metadata_item`.
const Set<String> _googleComputeProjectMetadataItemSensitive = <String>{};

/// Factory wrapper for `google_compute_project_metadata_item`.
final class GoogleComputeProjectMetadataItem extends Resource {
  static const String tfType = 'google_compute_project_metadata_item';

  GoogleComputeProjectMetadataItem({
    required super.localName,
    required TfArg<String> key,
    required TfArg<String> value,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'key': key,
           'value': value,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleComputeProjectMetadataItemSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
