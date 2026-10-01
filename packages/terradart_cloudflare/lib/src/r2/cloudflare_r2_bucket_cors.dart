// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../account/cloudflare_account.dart' show CloudflareAccount;

/// Sensitive field paths for `cloudflare_r2_bucket_cors`.
const Set<String> _cloudflareR2BucketCorsSensitive = <String>{};

/// R2 Bucket Cors enum for `jurisdiction`.
enum R2BucketCorsJurisdiction implements TerraformEnum {
  defaultCase('default'),
  eu('eu'),
  fedramp('fedramp');

  const R2BucketCorsJurisdiction(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `rules` block of
/// `cloudflare_r2_bucket_cors` (derived from provider schema).
@immutable
final class R2BucketCorsRules {
  const R2BucketCorsRules({
    this.exposeHeaders,
    this.id,
    this.maxAgeSeconds,
    required this.allowed,
  });

  final TfArg<List<String>>? exposeHeaders;

  final TfArg<String>? id;

  final TfArg<num>? maxAgeSeconds;

  final R2BucketCorsAllowed allowed;

  Map<String, Object?> encode() => {
    'expose_headers': ?exposeHeaders?.toTfJson(),
    'id': ?id?.toTfJson(),
    'max_age_seconds': ?maxAgeSeconds?.toTfJson(),
    'allowed': allowed.encode(),
  };
}

/// Typed helper for the `rules.allowed` block of
/// `cloudflare_r2_bucket_cors` (derived from provider schema).
@immutable
final class R2BucketCorsAllowed {
  const R2BucketCorsAllowed({
    this.headers,
    required this.methods,
    required this.origins,
  });

  final TfArg<List<String>>? headers;

  final List<TfArg<R2BucketCorsMethods>> methods;

  final TfArg<List<String>> origins;

  Map<String, Object?> encode() => {
    'headers': ?headers?.toTfJson(),
    'methods': [for (final e in methods) e.toTfJson()],
    'origins': origins.toTfJson(),
  };
}

/// `methods` — derived from the provider schema description.
enum R2BucketCorsMethods implements TerraformEnum {
  get('GET'),
  put('PUT'),
  post('POST'),
  delete('DELETE'),
  head('HEAD');

  const R2BucketCorsMethods(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `cloudflare_r2_bucket_cors`.
final class CloudflareR2BucketCors extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_cors';

  CloudflareR2BucketCors(
    super.localName, {
    required RefTo<CloudflareAccount> accountId,
    required TfArg<String> bucketName,
    TfArg<R2BucketCorsJurisdiction>? jurisdiction,
    List<R2BucketCorsRules>? rules,
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
  Set<String> get sensitiveFields => _cloudflareR2BucketCorsSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<CloudflareR2BucketCors>`.
  RefTo<CloudflareR2BucketCors> get ref => RefTo.of(this);

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `bucket_name` attribute.
  TfRef<String> get bucketName => TfRef.attribute<String>(this, 'bucket_name');

  /// Reference to `jurisdiction` attribute.
  TfRef<String> get jurisdiction =>
      TfRef.attribute<String>(this, 'jurisdiction');
}
