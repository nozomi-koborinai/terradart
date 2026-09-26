// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_cors_configuration`.
const Set<String> _awsS3BucketCorsConfigurationSensitive = <String>{};

/// Typed helper for the `cors_rule` block of
/// `aws_s3_bucket_cors_configuration` (derived from provider schema).
@immutable
final class S3BucketCorsConfigurationCorsRule {
  const S3BucketCorsConfigurationCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.id,
    this.maxAgeSeconds,
  });

  final TfArg<List<Object?>>? allowedHeaders;

  final TfArg<List<Object?>> allowedMethods;

  final TfArg<List<Object?>> allowedOrigins;

  final TfArg<List<Object?>>? exposeHeaders;

  final TfArg<String>? id;

  final TfArg<num>? maxAgeSeconds;

  Map<String, Object?> encode() => {
    if (allowedHeaders != null) 'allowed_headers': allowedHeaders!.toTfJson(),
    'allowed_methods': allowedMethods.toTfJson(),
    'allowed_origins': allowedOrigins.toTfJson(),
    if (exposeHeaders != null) 'expose_headers': exposeHeaders!.toTfJson(),
    if (id != null) 'id': id!.toTfJson(),
    if (maxAgeSeconds != null) 'max_age_seconds': maxAgeSeconds!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_cors_configuration`.
final class AwsS3BucketCorsConfiguration extends Resource {
  static const String tfType = 'aws_s3_bucket_cors_configuration';

  AwsS3BucketCorsConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    TfArg<String>? expectedBucketOwner,
    TfArg<String>? region,
    required List<S3BucketCorsConfigurationCorsRule> corsRule,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           if (expectedBucketOwner != null)
             'expected_bucket_owner': expectedBucketOwner,
           if (region != null) 'region': region,
           'cors_rule': TfArg.literal([for (final e in corsRule) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3BucketCorsConfigurationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
