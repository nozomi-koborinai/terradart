// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_bucket_intelligent_tiering_configuration`.
const Set<String> _awsS3BucketIntelligentTieringConfigurationSensitive =
    <String>{};

/// Typed helper for the `filter` block of
/// `aws_s3_bucket_intelligent_tiering_configuration` (derived from provider schema).
@immutable
final class S3BucketIntelligentTieringConfigurationFilter {
  const S3BucketIntelligentTieringConfigurationFilter({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  Map<String, Object?> encode() => {
    if (prefix != null) 'prefix': prefix!.toTfJson(),
    if (tags != null) 'tags': tags!.toTfJson(),
  };
}

/// Typed helper for the `tiering` block of
/// `aws_s3_bucket_intelligent_tiering_configuration` (derived from provider schema).
@immutable
final class S3BucketIntelligentTieringConfigurationTiering {
  const S3BucketIntelligentTieringConfigurationTiering({
    required this.accessTier,
    required this.days,
  });

  final TfArg<String> accessTier;

  final TfArg<num> days;

  Map<String, Object?> encode() => {
    'access_tier': accessTier.toTfJson(),
    'days': days.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_bucket_intelligent_tiering_configuration`.
final class AwsS3BucketIntelligentTieringConfiguration extends Resource {
  static const String tfType =
      'aws_s3_bucket_intelligent_tiering_configuration';

  AwsS3BucketIntelligentTieringConfiguration({
    required super.localName,
    required TfArg<String> bucket,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<String>? status,
    S3BucketIntelligentTieringConfigurationFilter? filter,
    required List<S3BucketIntelligentTieringConfigurationTiering> tiering,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'name': name,
           if (region != null) 'region': region,
           if (status != null) 'status': status,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'tiering': TfArg.literal([for (final e in tiering) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketIntelligentTieringConfigurationSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
