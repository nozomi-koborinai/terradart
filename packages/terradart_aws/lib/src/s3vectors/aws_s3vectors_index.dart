// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3vectors_index`.
const Set<String> _awsS3vectorsIndexSensitive = <String>{};

/// S3vectors Index Data enum for `data_type`.
extension type const S3vectorsIndexDataType._(TfArg<String> _)
    implements TfArg<String> {
  S3vectorsIndexDataType.variable(String name) : this._(TfArg.variable(name));
  S3vectorsIndexDataType.expression(String template)
    : this._(TfArg.expression(template));
  const S3vectorsIndexDataType.arg(TfArg<String> arg) : this._(arg);

  static const float32 = S3vectorsIndexDataType._(TfArgLiteral('float32'));

  static const List<S3vectorsIndexDataType> values = [float32];
}

/// S3vectors Index Distance enum for `distance_metric`.
extension type const S3vectorsIndexDistanceMetric._(TfArg<String> _)
    implements TfArg<String> {
  S3vectorsIndexDistanceMetric.variable(String name)
    : this._(TfArg.variable(name));
  S3vectorsIndexDistanceMetric.expression(String template)
    : this._(TfArg.expression(template));
  const S3vectorsIndexDistanceMetric.arg(TfArg<String> arg) : this._(arg);

  static const euclidean = S3vectorsIndexDistanceMetric._(
    TfArgLiteral('euclidean'),
  );
  static const cosine = S3vectorsIndexDistanceMetric._(TfArgLiteral('cosine'));

  static const List<S3vectorsIndexDistanceMetric> values = [euclidean, cosine];
}

/// Typed helper for the `metadata_configuration` block of
/// `aws_s3vectors_index` (derived from provider schema).
@immutable
final class S3vectorsIndexMetadataConfiguration {
  const S3vectorsIndexMetadataConfiguration({
    required this.nonFilterableMetadataKeys,
  });

  final TfArg<List<String>> nonFilterableMetadataKeys;

  Map<String, Object?> encode() => {
    'non_filterable_metadata_keys': nonFilterableMetadataKeys.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3vectors_index`.
final class AwsS3vectorsIndex extends Resource {
  static const String tfType = 'aws_s3vectors_index';

  AwsS3vectorsIndex(
    super.localName, {
    required S3vectorsIndexDataType dataType,
    required TfArg<num> dimension,
    required S3vectorsIndexDistanceMetric distanceMetric,
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

  /// Reference to `data_type` attribute.
  TfRef<String> get dataType => TfRef.attribute<String>(this, 'data_type');

  /// Reference to `dimension` attribute.
  TfRef<num> get dimension => TfRef.attribute<num>(this, 'dimension');

  /// Reference to `distance_metric` attribute.
  TfRef<String> get distanceMetric =>
      TfRef.attribute<String>(this, 'distance_metric');

  /// Reference to `encryption_configuration` attribute.
  TfRef<List<Map<String, Object?>>> get encryptionConfiguration =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'encryption_configuration',
      );

  /// Reference to `index_name` attribute.
  TfRef<String> get indexName => TfRef.attribute<String>(this, 'index_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `vector_bucket_name` attribute.
  TfRef<String> get vectorBucketName =>
      TfRef.attribute<String>(this, 'vector_bucket_name');
}
