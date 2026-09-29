// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_observability_bucket`.
const Set<String> _googleObservabilityBucketSensitive = <String>{};

/// Factory wrapper for `google_observability_bucket`.
///
/// Bucket configuration for storing observability data.
final class GoogleObservabilityBucket extends Resource {
  static const String tfType = 'google_observability_bucket';

  GoogleObservabilityBucket({
    required super.localName,
    required TfArg<String> bucketId,
    TfArg<String>? description,
    TfArg<String>? displayName,
    required TfArg<String> location,
    TfArg<String>? project,
    TfArg<Map<String, dynamic>>? cmekSettings,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': bucketId,
           'description': ?description,
           'display_name': ?displayName,
           'location': location,
           'project': ?project,
           'cmek_settings': ?cmekSettings,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleObservabilityBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleObservabilityBucket>`.
  RefTo<GoogleObservabilityBucket> get ref => RefTo.of(this);
}
