// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_lifecycle`.
const Set<String> _cloudflareR2BucketLifecycleSensitive = <String>{};

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

  final R2BucketLifecycleRulesAbortMultipartUploadsTransition?
  abortMultipartUploadsTransition;

  final R2BucketLifecycleRulesConditions conditions;

  final R2BucketLifecycleRulesDeleteObjectsTransition? deleteObjectsTransition;

  final List<R2BucketLifecycleRulesStorageClassTransitions>?
  storageClassTransitions;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    if (abortMultipartUploadsTransition != null)
      'abort_multipart_uploads_transition': abortMultipartUploadsTransition!
          .encode(),
    'conditions': conditions.encode(),
    if (deleteObjectsTransition != null)
      'delete_objects_transition': deleteObjectsTransition!.encode(),
    if (storageClassTransitions != null)
      'storage_class_transitions': [
        for (final e in storageClassTransitions!) e.encode(),
      ],
  };
}

/// Typed helper for the `rules.abort_multipart_uploads_transition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesAbortMultipartUploadsTransition {
  const R2BucketLifecycleRulesAbortMultipartUploadsTransition({this.condition});

  final R2BucketLifecycleRulesAbortMultipartUploadsTransitionCondition?
  condition;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.encode(),
  };
}

/// Typed helper for the `rules.abort_multipart_uploads_transition.condition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesAbortMultipartUploadsTransitionCondition {
  const R2BucketLifecycleRulesAbortMultipartUploadsTransitionCondition({
    required this.maxAge,
    required this.type,
  });

  final TfArg<num> maxAge;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    'max_age': maxAge.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `rules.conditions` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesConditions {
  const R2BucketLifecycleRulesConditions({required this.prefix});

  final TfArg<String> prefix;

  Map<String, Object?> encode() => {'prefix': prefix.toTfJson()};
}

/// Typed helper for the `rules.delete_objects_transition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesDeleteObjectsTransition {
  const R2BucketLifecycleRulesDeleteObjectsTransition({this.condition});

  final R2BucketLifecycleRulesDeleteObjectsTransitionCondition? condition;

  Map<String, Object?> encode() => {
    if (condition != null) 'condition': condition!.encode(),
  };
}

/// Typed helper for the `rules.delete_objects_transition.condition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesDeleteObjectsTransitionCondition {
  const R2BucketLifecycleRulesDeleteObjectsTransitionCondition({
    this.date,
    this.maxAge,
    required this.type,
  });

  final TfArg<String>? date;

  final TfArg<num>? maxAge;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (maxAge != null) 'max_age': maxAge!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Typed helper for the `rules.storage_class_transitions` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesStorageClassTransitions {
  const R2BucketLifecycleRulesStorageClassTransitions({
    required this.storageClass,
    required this.condition,
  });

  final TfArg<String> storageClass;

  final R2BucketLifecycleRulesStorageClassTransitionsCondition condition;

  Map<String, Object?> encode() => {
    'storage_class': storageClass.toTfJson(),
    'condition': condition.encode(),
  };
}

/// Typed helper for the `rules.storage_class_transitions.condition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleRulesStorageClassTransitionsCondition {
  const R2BucketLifecycleRulesStorageClassTransitionsCondition({
    this.date,
    this.maxAge,
    required this.type,
  });

  final TfArg<String>? date;

  final TfArg<num>? maxAge;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (maxAge != null) 'max_age': maxAge!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_r2_bucket_lifecycle`.
final class CloudflareR2BucketLifecycle extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_lifecycle';

  CloudflareR2BucketLifecycle({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    TfArg<String>? jurisdiction,
    List<R2BucketLifecycleRules>? rules,
    super.lifecycle,
    super.dependsOn,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'bucket_name': bucketName,
           if (jurisdiction != null) 'jurisdiction': jurisdiction,
           if (rules != null)
             'rules': TfArg.literal([for (final e in rules) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _cloudflareR2BucketLifecycleSensitive;
}
