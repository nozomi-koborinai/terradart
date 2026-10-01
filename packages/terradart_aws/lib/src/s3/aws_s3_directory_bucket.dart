// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_s3_directory_bucket`.
const Set<String> _awsS3DirectoryBucketSensitive = <String>{};

/// Typed helper for the `location` block of
/// `aws_s3_directory_bucket` (derived from provider schema).
@immutable
final class S3DirectoryBucketLocation {
  const S3DirectoryBucketLocation({required this.name, this.type});

  final TfArg<String> name;

  final TfArg<String>? type;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'type': ?type?.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_directory_bucket`.
final class AwsS3DirectoryBucket extends Resource {
  static const String tfType = 'aws_s3_directory_bucket';

  AwsS3DirectoryBucket(
    super.localName, {
    required TfArg<String> bucket,
    TfArg<String>? dataRedundancy,
    TfArg<bool>? forceDestroy,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    List<S3DirectoryBucketLocation>? location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'bucket': bucket,
           'data_redundancy': ?dataRedundancy,
           'force_destroy': ?forceDestroy,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
           if (location != null)
             'location': TfArg.literal([for (final e in location) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3DirectoryBucketSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsS3DirectoryBucket>`.
  RefTo<AwsS3DirectoryBucket> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `bucket` attribute.
  TfRef<String> get bucket => TfRef.attribute<String>(this, 'bucket');

  /// Reference to `data_redundancy` attribute.
  TfRef<String> get dataRedundancy =>
      TfRef.attribute<String>(this, 'data_redundancy');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
