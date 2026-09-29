// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_bucket_iam_binding`.
const Set<String> _googleStorageBucketIamBindingSensitive = <String>{};

/// Factory wrapper for `google_storage_bucket_iam_binding`.
///
/// Authoritative IAM binding for a single `role` on a Cloud Storage bucket.
///
/// Replaces the entire member list for that role on the bucket. Prefer
/// [GoogleStorageBucketIamMember] when adding one principal without
/// touching existing bindings.
final class GoogleStorageBucketIamBinding extends Resource {
  static const String tfType = 'google_storage_bucket_iam_binding';

  GoogleStorageBucketIamBinding({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> role,
    required TfArg<List<String>> members,
    TfArg<Map<String, dynamic>>? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'role': role,
           'members': members,
           if (condition != null) 'condition': condition,
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketIamBindingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBucketIamBinding>`.
  RefTo<GoogleStorageBucketIamBinding> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
