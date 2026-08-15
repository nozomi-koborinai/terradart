// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_buckets`.
const Set<String> _googleStorageBucketsSensitive = <String>{};

/// Factory wrapper for `google_storage_buckets`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageBuckets extends Data {
  static const String tfType = 'google_storage_buckets';

  DataGoogleStorageBuckets({
    required super.localName,
    TfArg<String>? prefix,
    TfArg<String>? project,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (prefix != null) 'prefix': prefix,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `buckets` attribute.
  TfRef<List<Map<String, Object?>>> get buckets =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'buckets');
}
