// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `cloudflare_r2_bucket_cors`.
const Set<String> _cloudflareR2BucketCorsSensitive = <String>{};

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

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<String>? id;

  final TfArg<num>? maxAgeSeconds;

  final R2BucketCorsRulesAllowed allowed;

  Map<String, Object?> encode() => {
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (maxAgeSeconds != null) 'max_age_seconds': maxAgeSeconds!.toTfJson(),
    'allowed': allowed.encode(),
  };
}

/// Typed helper for the `rules.allowed` block of
/// `cloudflare_r2_bucket_cors` (derived from provider schema).
@immutable
final class R2BucketCorsRulesAllowed {
  const R2BucketCorsRulesAllowed({
    this.headers,
    required this.methods,
    required this.origins,
  });

  final TfArg<List<Object?>>? headers;

  final TfArg<List<Object?>> methods;

  final TfArg<List<Object?>> origins;

  Map<String, Object?> encode() => {
    if (headers != null) 'headers': headers!.toTfJson(),
    'methods': methods.toTfJson(),
    'origins': origins.toTfJson(),
  };
}

/// Factory wrapper for `cloudflare_r2_bucket_cors`.
final class CloudflareR2BucketCors extends Resource {
  static const String tfType = 'cloudflare_r2_bucket_cors';

  CloudflareR2BucketCors({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> bucketName,
    TfArg<String>? jurisdiction,
    List<R2BucketCorsRules>? rules,
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
  Set<String> get sensitiveFields => _cloudflareR2BucketCorsSensitive;
}
