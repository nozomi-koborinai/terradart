// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_s3_bucket_intelligent_tiering_configuration`.
const Set<String> _awsS3BucketIntelligentTieringConfigurationSensitive =
    <String>{};

/// S3 Bucket Intelligent Tiering Configuration enum for `status`.
extension type const S3BucketIntelligentTieringConfigurationStatus._(
  TfArg<String> _
) implements TfArg<String> {
  S3BucketIntelligentTieringConfigurationStatus.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketIntelligentTieringConfigurationStatus.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketIntelligentTieringConfigurationStatus.arg(TfArg<String> arg)
    : this._(arg);

  static const enabled = S3BucketIntelligentTieringConfigurationStatus._(
    TfArgLiteral('Enabled'),
  );
  static const disabled = S3BucketIntelligentTieringConfigurationStatus._(
    TfArgLiteral('Disabled'),
  );

  static const List<S3BucketIntelligentTieringConfigurationStatus> values = [
    enabled,
    disabled,
  ];
}

/// Typed helper for the `filter` block of
/// `aws_s3_bucket_intelligent_tiering_configuration` (derived from provider schema).
@immutable
final class S3BucketIntelligentTieringConfigurationFilter {
  const S3BucketIntelligentTieringConfigurationFilter({this.prefix, this.tags});

  final TfArg<String>? prefix;

  final TfArg<Map<String, String>>? tags;

  @internal
  Map<String, Object?> encode() => {
    'prefix': ?prefix?.toTfJson(),
    'tags': ?tags?.toTfJson(),
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

  final S3BucketIntelligentTieringConfigurationAccessTier accessTier;

  final TfArg<num> days;

  @internal
  Map<String, Object?> encode() => {
    'access_tier': accessTier.toTfJson(),
    'days': days.toTfJson(),
  };
}

/// `access_tier` — derived from the provider schema description.
extension type const S3BucketIntelligentTieringConfigurationAccessTier._(
  TfArg<String> _
) implements TfArg<String> {
  S3BucketIntelligentTieringConfigurationAccessTier.variable(String name)
    : this._(TfArg.variable(name));
  S3BucketIntelligentTieringConfigurationAccessTier.expression(String template)
    : this._(TfArg.expression(template));
  const S3BucketIntelligentTieringConfigurationAccessTier.arg(TfArg<String> arg)
    : this._(arg);

  static const archiveAccess =
      S3BucketIntelligentTieringConfigurationAccessTier._(
        TfArgLiteral('ARCHIVE_ACCESS'),
      );
  static const deepArchiveAccess =
      S3BucketIntelligentTieringConfigurationAccessTier._(
        TfArgLiteral('DEEP_ARCHIVE_ACCESS'),
      );

  static const List<S3BucketIntelligentTieringConfigurationAccessTier> values =
      [archiveAccess, deepArchiveAccess];
}

/// Factory wrapper for `aws_s3_bucket_intelligent_tiering_configuration`.
final class AwsS3BucketIntelligentTieringConfiguration extends Resource {
  static const String tfType =
      'aws_s3_bucket_intelligent_tiering_configuration';

  AwsS3BucketIntelligentTieringConfiguration(
    super.localName, {
    required RefTo<AwsS3Bucket> bucket,
    required TfArg<String> name,
    TfArg<String>? region,
    S3BucketIntelligentTieringConfigurationStatus? status,
    S3BucketIntelligentTieringConfigurationFilter? filter,
    required List<S3BucketIntelligentTieringConfigurationTiering> tiering,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket.encodeAs('id'),
           'name': name,
           'region': ?region,
           'status': ?status,
           if (filter != null) 'filter': TfArg.literal(filter.encode()),
           'tiering': TfArg.literal([for (final e in tiering) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsS3BucketIntelligentTieringConfigurationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3BucketIntelligentTieringConfiguration>`.
  RefTo<AwsS3BucketIntelligentTieringConfiguration> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
