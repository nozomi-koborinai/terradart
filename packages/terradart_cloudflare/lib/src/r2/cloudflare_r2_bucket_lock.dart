// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_lock`.
const Set<String> _cloudflareR2BucketLockSensitive = <String>{};

/// Typed helper for the `rules` block of
/// `cloudflare_r2_bucket_lock` (derived from provider schema).
@immutable
final class R2BucketLockRules {
  const R2BucketLockRules({
    required this.enabled,
    required this.id,
    this.prefix,
    required this.condition,
  });

  final TfArg<bool> enabled;

  final TfArg<String> id;

  final TfArg<String>? prefix;

  final R2BucketLockRulesCondition condition;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    'condition': condition.encode(),
  };
}

/// Typed helper for the `rules.condition` block of
/// `cloudflare_r2_bucket_lock` (derived from provider schema).
@immutable
final class R2BucketLockRulesCondition {
  const R2BucketLockRulesCondition({
    this.date,
    this.maxAgeSeconds,
    required this.type,
  });

  final TfArg<String>? date;

  final TfArg<num>? maxAgeSeconds;

  final TfArg<String> type;

  Map<String, Object?> encode() => {
    if (date != null) 'date': date!.toTfJson(),
    if (maxAgeSeconds != null) 'max_age_seconds': maxAgeSeconds!.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_r2_bucket_lock`.
final class CloudflareR2BucketLock extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_lock';

  CloudflareR2BucketLock({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    TfArg<String>? jurisdiction,
    List<R2BucketLockRules>? rules,
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
  Set<String> get sensitiveFields => _cloudflareR2BucketLockSensitive;
}
