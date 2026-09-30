// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../storage/google_storage_bucket.dart' show GoogleStorageBucket;

/// Sensitive field paths for `google_storage_bucket_iam_member`.
const Set<String> _googleStorageBucketIamMemberSensitive = <String>{};

/// Typed helper for the `condition` block of
/// `google_storage_bucket_iam_member` (derived from provider schema).
@immutable
final class StorageBucketIamMemberCondition {
  const StorageBucketIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  final TfArg<String>? description;

  final TfArg<String> expression;

  final TfArg<String> title;

  Map<String, Object?> encode() => {
    'description': ?description?.toTfJson(),
    'expression': expression.toTfJson(),
    'title': title.toTfJson(),
  };
}

/// Factory wrapper for `google_storage_bucket_iam_member`.
final class GoogleStorageBucketIamMember extends Resource {
  static const String tfType = 'google_storage_bucket_iam_member';

  GoogleStorageBucketIamMember({
    required super.localName,
    required RefTo<GoogleStorageBucket> bucket,
    required TfArg<String> role,
    required TfArg<String> member,
    StorageBucketIamMemberCondition? condition,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('name'),
           'role': role,
           'member': member,
           if (condition != null)
             'condition': TfArg.literal(condition.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _googleStorageBucketIamMemberSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<GoogleStorageBucketIamMember>`.
  RefTo<GoogleStorageBucketIamMember> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `etag` attribute.
  TfRef<String> get etag => TfRef.attribute<String>(this, 'etag');
}
