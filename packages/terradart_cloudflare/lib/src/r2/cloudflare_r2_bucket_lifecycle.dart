// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_lifecycle`.
const Set<String> _cloudflareR2BucketLifecycleSensitive = <String>{};

/// R2 Bucket Lifecycle enum for `jurisdiction`.
enum R2BucketLifecycleJurisdiction implements TerraformEnum {
  defaultCase('default'),
  eu('eu'),
  fedramp('fedramp');

  const R2BucketLifecycleJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRules {
  const R2BucketLifecycleRules({
    required this.enabled,
    required this.id,
    this.abortMultipartUploadsTransition,
    required this.conditions,
    this.deleteObjectsTransition,
    this.storageClassTransitions,
  });

  final TfArg<bool> enabled;

  final TfArg<String> id;

  final R2BucketLifecycleAbortMultipartUploadsTransition?
  abortMultipartUploadsTransition;

  final R2BucketLifecycleConditions conditions;

  final R2BucketLifecycleDeleteObjectsTransition? deleteObjectsTransition;

  final List<R2BucketLifecycleStorageClassTransitions>? storageClassTransitions;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    'abort_multipart_uploads_transition': ?abortMultipartUploadsTransition
        ?.encode(),
    'conditions': conditions.encode(),
    'delete_objects_transition': ?deleteObjectsTransition?.encode(),
    if (storageClassTransitions != null)
      'storage_class_transitions': [
        for (final e in storageClassTransitions!) e.encode(),
      ],
  };
}

/// Typed helper for the `rules.abort_multipart_uploads_transition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleAbortMultipartUploadsTransition {
  const R2BucketLifecycleAbortMultipartUploadsTransition({this.condition});

  final R2BucketLifecycleAbortMultipartUploadsTransitionCondition? condition;

  Map<String, Object?> encode() => {'condition': ?condition?.encode()};
}

/// Typed helper for the `rules.abort_multipart_uploads_transition.condition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleAbortMultipartUploadsTransitionCondition {
  const R2BucketLifecycleAbortMultipartUploadsTransitionCondition({
    required this.maxAge,
    required this.type,
  });

  final TfArg<num> maxAge;

  final TfArg<R2BucketLifecycleAbortMultipartUploadsTransitionType> type;

  Map<String, Object?> encode() => {
    'max_age': maxAge.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum R2BucketLifecycleAbortMultipartUploadsTransitionType
    implements TerraformEnum {
  age('Age');

  const R2BucketLifecycleAbortMultipartUploadsTransitionType(
    this.terraformValue,
  );
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.conditions` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleConditions {
  const R2BucketLifecycleConditions({required this.prefix});

  final TfArg<String> prefix;

  Map<String, Object?> encode() => {'prefix': prefix.toTfJson()};
}

/// Typed helper for the `rules.delete_objects_transition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleDeleteObjectsTransition {
  const R2BucketLifecycleDeleteObjectsTransition({this.condition});

  final R2BucketLifecycleDeleteObjectsTransitionCondition? condition;

  Map<String, Object?> encode() => {'condition': ?condition?.encode()};
}

/// Typed helper for the `rules.delete_objects_transition.condition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
/// Shared by every block of this shape in the resource.
@immutable
final class R2BucketLifecycleDeleteObjectsTransitionCondition {
  const R2BucketLifecycleDeleteObjectsTransitionCondition({
    this.date,
    this.maxAge,
    required this.type,
  });

  final TfArg<String>? date;

  final TfArg<num>? maxAge;

  final TfArg<R2BucketLifecycleDeleteObjectsTransitionType> type;

  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum R2BucketLifecycleDeleteObjectsTransitionType implements TerraformEnum {
  age('Age'),
  date('Date');

  const R2BucketLifecycleDeleteObjectsTransitionType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules.storage_class_transitions` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleStorageClassTransitions {
  const R2BucketLifecycleStorageClassTransitions({
    required this.storageClass,
    required this.condition,
  });

  final TfArg<R2BucketLifecycleStorageClass> storageClass;

  final R2BucketLifecycleDeleteObjectsTransitionCondition condition;

  Map<String, Object?> encode() => {
    'storage_class': storageClass.toTfJson(),
    'condition': condition.encode(),
  };
}

/// `storage_class` — derived from the provider schema description.
enum R2BucketLifecycleStorageClass implements TerraformEnum {
  infrequentaccess('InfrequentAccess');

  const R2BucketLifecycleStorageClass(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_r2_bucket_lifecycle`.
final class CloudflareR2BucketLifecycle extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_lifecycle';

  CloudflareR2BucketLifecycle(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    TfArg<R2BucketLifecycleJurisdiction>? jurisdiction,
    List<R2BucketLifecycleRules>? rules,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId.encodeAs('id'),
           'bucket_name': bucketName,
           'jurisdiction': ?jurisdiction,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketLifecycleSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2BucketLifecycle>`.
  RefTo<CloudflareR2BucketLifecycle> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');
}
