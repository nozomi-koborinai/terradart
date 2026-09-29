// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_storage_bucket`.
const Set<String> _googleFirebaseStorageBucketSensitive = <String>{};

/// Factory wrapper for `google_firebase_storage_bucket`.
///
/// An association between a Firebase project and a Google Cloud Storage bucket.
/// This association enables integration of Cloud Storage buckets with Firebase
/// such as Firebase SDKS, Authentication, and Security Rules.
final class GoogleFirebaseStorageBucket extends Resource {
  static const String tfType = 'google_firebase_storage_bucket';

  GoogleFirebaseStorageBucket({
    required super.localName,
    TfArg<String>? bucketId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    String? provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         provider: provider ?? 'google-beta',
         argMap: {
           if (bucketId != null) 'bucket_id': bucketId,
           if (deletionPolicy != null) 'deletion_policy': deletionPolicy,
           if (project != null) 'project': project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseStorageBucketSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
