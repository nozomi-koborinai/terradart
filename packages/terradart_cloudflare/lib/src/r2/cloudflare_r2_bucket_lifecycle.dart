// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_lifecycle`.
const Set<String> _cloudflareR2BucketLifecycleSensitive = <String>{};

/// R2 Bucket Lifecycle enum for `jurisdiction`.
extension type const R2BucketLifecycleJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketLifecycleJurisdiction.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketLifecycleJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketLifecycleJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = R2BucketLifecycleJurisdiction._(
    TfArgLiteral('default'),
  );
  static const eu = R2BucketLifecycleJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2BucketLifecycleJurisdiction._(
    TfArgLiteral('fedramp'),
  );

  static const List<R2BucketLifecycleJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
  ];
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

  @internal
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

  @internal
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

  final R2BucketLifecycleAbortMultipartUploadsTransitionType type;

  @internal
  Map<String, Object?> encode() => {
    'max_age': maxAge.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const R2BucketLifecycleAbortMultipartUploadsTransitionType._(
  TfArg<String> _
) implements TfArg<String> {
  R2BucketLifecycleAbortMultipartUploadsTransitionType.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketLifecycleAbortMultipartUploadsTransitionType.expression(
    String template,
  ) : this._(TfArg.expression(template));
  const R2BucketLifecycleAbortMultipartUploadsTransitionType.arg(
    TfArg<String> arg,
  ) : this._(arg);

  static const age = R2BucketLifecycleAbortMultipartUploadsTransitionType._(
    TfArgLiteral('Age'),
  );

  static const List<R2BucketLifecycleAbortMultipartUploadsTransitionType>
  values = [age];
}

/// Typed helper for the `rules.conditions` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleConditions {
  const R2BucketLifecycleConditions({required this.prefix});

  final TfArg<String> prefix;

  @internal
  Map<String, Object?> encode() => {'prefix': prefix.toTfJson()};
}

/// Typed helper for the `rules.delete_objects_transition` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleDeleteObjectsTransition {
  const R2BucketLifecycleDeleteObjectsTransition({this.condition});

  final R2BucketLifecycleDeleteObjectsTransitionCondition? condition;

  @internal
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

  final R2BucketLifecycleDeleteObjectsTransitionType type;

  @internal
  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'max_age': ?maxAge?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const R2BucketLifecycleDeleteObjectsTransitionType._(
  TfArg<String> _
) implements TfArg<String> {
  R2BucketLifecycleDeleteObjectsTransitionType.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketLifecycleDeleteObjectsTransitionType.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketLifecycleDeleteObjectsTransitionType.arg(TfArg<String> arg)
    : this._(arg);

  static const age = R2BucketLifecycleDeleteObjectsTransitionType._(
    TfArgLiteral('Age'),
  );
  static const date = R2BucketLifecycleDeleteObjectsTransitionType._(
    TfArgLiteral('Date'),
  );

  static const List<R2BucketLifecycleDeleteObjectsTransitionType> values = [
    age,
    date,
  ];
}

/// Typed helper for the `rules.storage_class_transitions` block of
/// `cloudflare_r2_bucket_lifecycle` (derived from provider schema).
@immutable
final class R2BucketLifecycleStorageClassTransitions {
  const R2BucketLifecycleStorageClassTransitions({
    required this.storageClass,
    required this.condition,
  });

  final R2BucketLifecycleStorageClass storageClass;

  final R2BucketLifecycleDeleteObjectsTransitionCondition condition;

  @internal
  Map<String, Object?> encode() => {
    'storage_class': storageClass.toTfJson(),
    'condition': condition.encode(),
  };
}

/// `storage_class` — derived from the provider schema description.
extension type const R2BucketLifecycleStorageClass._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketLifecycleStorageClass.variable(String name)
    : this._(TfArg.variable(name));
  R2BucketLifecycleStorageClass.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketLifecycleStorageClass.arg(TfArg<String> arg) : this._(arg);

  static const infrequentaccess = R2BucketLifecycleStorageClass._(
    TfArgLiteral('InfrequentAccess'),
  );

  static const List<R2BucketLifecycleStorageClass> values = [infrequentaccess];
}

/// Factory wrapper for `cloudflare_r2_bucket_lifecycle`.
final class CloudflareR2BucketLifecycle extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_lifecycle';

  CloudflareR2BucketLifecycle(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    R2BucketLifecycleJurisdiction? jurisdiction,
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
