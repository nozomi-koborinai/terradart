// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3vectors_index`.
const Set<String> _awsS3vectorsIndexSensitive = <String>{};

/// S3vectors Index Data enum for `data_type`.
enum S3vectorsIndexDataType implements TerraformEnum {
  float32('float32');

  const S3vectorsIndexDataType(this.terraformValue);
  @override
  final String terraformValue;
}

/// S3vectors Index Distance enum for `distance_metric`.
enum S3vectorsIndexDistanceMetric implements TerraformEnum {
  euclidean('euclidean'),
  cosine('cosine');

  const S3vectorsIndexDistanceMetric(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `metadata_configuration` block of
/// `aws_s3vectors_index` (derived from provider schema).
@immutable
final class S3vectorsIndexMetadataConfiguration {
  const S3vectorsIndexMetadataConfiguration({
    required this.nonFilterableMetadataKeys,
  });

  final TfArg<List<Object?>> nonFilterableMetadataKeys;

  Map<String, Object?> encode() => {
    'non_filterable_metadata_keys': nonFilterableMetadataKeys.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3vectors_index`.
final class AwsS3vectorsIndex extends Resource {
  static const String tfType = 'aws_s3vectors_index';

  AwsS3vectorsIndex({
    required super.localName,
    required TfArg<S3vectorsIndexDataType> dataType,
    required TfArg<num> dimension,
    required TfArg<S3vectorsIndexDistanceMetric> distanceMetric,
    TfArg<List<Map<String, Object?>>>? encryptionConfiguration,
    required TfArg<String> indexName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required TfArg<String> vectorBucketName,
    List<S3vectorsIndexMetadataConfiguration>? metadataConfiguration,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'data_type': dataType,
           'dimension': dimension,
           'distance_metric': distanceMetric,
           'encryption_configuration': ?encryptionConfiguration,
           'index_name': indexName,
           'region': ?region,
           'tags': ?tags,
           'vector_bucket_name': vectorBucketName,
           if (metadataConfiguration != null)
             'metadata_configuration': TfArg.literal([
               for (final e in metadataConfiguration) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3vectorsIndexSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3vectorsIndex>`.
  RefTo<AwsS3vectorsIndex> get ref => RefTo.of(this);

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `index_arn` attribute.
  TfRef<String> get indexArn => TfRef.attribute<String>(this, 'index_arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
