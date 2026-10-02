// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_lock`.
const Set<String> _cloudflareR2BucketLockSensitive = <String>{};

/// R2 Bucket Lock enum for `jurisdiction`.
extension type const R2BucketLockJurisdiction._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketLockJurisdiction.variable(String name) : this._(TfArg.variable(name));
  R2BucketLockJurisdiction.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketLockJurisdiction.arg(TfArg<String> arg) : this._(arg);

  static const defaultCase = R2BucketLockJurisdiction._(
    TfArgLiteral('default'),
  );
  static const eu = R2BucketLockJurisdiction._(TfArgLiteral('eu'));
  static const fedramp = R2BucketLockJurisdiction._(TfArgLiteral('fedramp'));

  static const List<R2BucketLockJurisdiction> values = [
    defaultCase,
    eu,
    fedramp,
  ];
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

  @internal
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

  final R2BucketLockType type;

  @internal
  Map<String, Object?> encode() => {
    'date': ?date?.toTfJson(),
    'max_age_seconds': ?maxAgeSeconds?.toTfJson(),
    'type': type.toTfJson(),
  };
}

/// `type` — derived from the provider schema description.
extension type const R2BucketLockType._(TfArg<String> _)
    implements TfArg<String> {
  R2BucketLockType.variable(String name) : this._(TfArg.variable(name));
  R2BucketLockType.expression(String template)
    : this._(TfArg.expression(template));
  const R2BucketLockType.arg(TfArg<String> arg) : this._(arg);

  static const age = R2BucketLockType._(TfArgLiteral('Age'));
  static const date = R2BucketLockType._(TfArgLiteral('Date'));
  static const indefinite = R2BucketLockType._(TfArgLiteral('Indefinite'));

  static const List<R2BucketLockType> values = [age, date, indefinite];
}

/// Factory wrapper for `cloudflare_r2_bucket_lock`.
final class CloudflareR2BucketLock extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_lock';

  CloudflareR2BucketLock(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    R2BucketLockJurisdiction? jurisdiction,
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
