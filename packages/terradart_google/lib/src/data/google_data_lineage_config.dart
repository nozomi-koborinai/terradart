// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_data_lineage_config`.
const Set<String> _googleDataLineageConfigSensitive = <String>{};

/// Factory wrapper for `google_data_lineage_config`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleDataLineageConfig extends Data {
  static const String tfType = 'google_data_lineage_config';

  DataGoogleDataLineageConfig({
    required super.localName,
    required TfArg<String> location,
    required TfArg<String> parent,
  }) : super(
         terraformType: tfType,
         argMap: {'location': location, 'parent': parent},
       );

  @override
  Set<String> get sensitiveFields => _googleDataLineageConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');

  /// Reference to `ingestion` attribute.
  TfRef<List<Map<String, Object?>>> get ingestion =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'ingestion');
}
