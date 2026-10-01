// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../iam/iam_principal.dart' show IamPrincipal;
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
    required IamPrincipal member,
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

  /// Reference to `bucket` attribute.
  TfRef<String> get bucketRef => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `member` attribute.
  TfRef<String> get memberRef => TfRef.attribute<String>(this, 'member');

  /// Reference to `role` attribute.
  TfRef<String> get roleRef => TfRef.attribute<String>(this, 'role');
}
