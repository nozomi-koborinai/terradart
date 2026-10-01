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

  GoogleFirebaseStorageBucket(
    super.localName, {
    TfArg<String>? bucketId,
    TfArg<String>? deletionPolicy,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket_id': ?bucketId,
           'deletion_policy': ?deletionPolicy,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleFirebaseStorageBucketSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseStorageBucket>`.
  RefTo<GoogleFirebaseStorageBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket_id` attribute.
  TfRef<String> get bucketId => TfRef.attribute<String>(this, 'bucket_id');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
