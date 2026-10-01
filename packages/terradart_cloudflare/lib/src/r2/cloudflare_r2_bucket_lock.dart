// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_lock`.
const Set<String> _cloudflareR2BucketLockSensitive = <String>{};

/// R2 Bucket Lock enum for `jurisdiction`.
enum R2BucketLockJurisdiction implements TerraformEnum {
  defaultCase('default'),
  eu('eu'),
  fedramp('fedramp');

  const R2BucketLockJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

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

  final R2BucketLockCondition condition;

  Map<String, Object?> encode() => {
    'enabled': enabled.toTfJson(),
    'id': id.toTfJson(),
    'prefix': ?prefix?.toTfJson(),
    'condition': condition.encode(),
  };
}

/// Typed helper for the `rules.condition` block of
/// `cloudflare_r2_bucket_lock` (derived from provider schema).
@immutable
final class R2BucketLockCondition {
  const R2BucketLockCondition({
    this.date,
    this.maxAgeSeconds,
    required this.type,
  });

  final TfArg<String>? date;

  final TfArg<num>? maxAgeSeconds;

  final TfArg<R2BucketLockType> type;

  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'max_age_seconds': ?maxAgeSeconds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
enum R2BucketLockType implements TerraformEnum {
  age('Age'),
  date('Date'),
  indefinite('Indefinite');

  const R2BucketLockType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_r2_bucket_lock`.
final class CloudflareR2BucketLock extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_lock';

  CloudflareR2BucketLock({
    required super.localName,
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    TfArg<R2BucketLockJurisdiction>? jurisdiction,
    List<R2BucketLockRules>? rules,
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
  Set<String> get sensitiveFields => _cloudflareR2BucketLockSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2BucketLock>`.
  RefTo<CloudflareR2BucketLock> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');
}
