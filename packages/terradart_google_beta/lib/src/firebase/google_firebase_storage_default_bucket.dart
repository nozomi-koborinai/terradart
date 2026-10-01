// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `google_firebase_storage_default_bucket`.
const Set<String> _googleFirebaseStorageDefaultBucketSensitive = <String>{};

/// Factory wrapper for `google_firebase_storage_default_bucket`.
///
/// A resource that manages the creation of the default Google Cloud Storage
/// bucket for a Firebase project.
final class GoogleFirebaseStorageDefaultBucket extends Resource {
  static const String tfType = 'google_firebase_storage_default_bucket';

  GoogleFirebaseStorageDefaultBucket(
    super.localName, {
    TfArg<String>? deletionPolicy,
    required TfArg<String> location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'deletion_policy': ?deletionPolicy,
           'location': location,
           'project': ?project,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _googleFirebaseStorageDefaultBucketSensitive;

  @override
  String get defaultProvider => 'google-beta';

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleFirebaseStorageDefaultBucket>`.
  RefTo<GoogleFirebaseStorageDefaultBucket> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<List<Map<String, Object?>>> get bucket =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'bucket');

  /// Reference to `deletion_policy` attribute.
  TfRef<String> get deletionPolicy =>
      TfRef.attribute<String>(this, 'deletion_policy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `project` attribute.
  TfRef<String> get project => TfRef.attribute<String>(this, 'project');
}
