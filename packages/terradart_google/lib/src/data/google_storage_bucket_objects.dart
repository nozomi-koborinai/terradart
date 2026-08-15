// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_storage_bucket_objects`.
const Set<String> _googleStorageBucketObjectsSensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_objects`.
///
/// Read-only data source on the apply-excluded leftover path
/// (synth + `terraform validate` only). Do not apply.
final class DataGoogleStorageBucketObjects extends Data {
  static const String tfType = 'google_storage_bucket_objects';

  DataGoogleStorageBucketObjects({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? matchGlob,
    TfArg<String>? prefix,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (matchGlob != null) 'match_glob': matchGlob,
           if (prefix != null) 'prefix': prefix,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketObjectsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_objects` attribute.
  TfRef<List<Map<String, Object?>>> get bucketObjects =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bucket_objects');
}
