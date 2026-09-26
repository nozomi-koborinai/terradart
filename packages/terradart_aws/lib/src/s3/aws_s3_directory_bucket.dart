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
    if (type != null) 'type': type!.toTfJson(),
  };
}

/// Factory wrapper for `aws_s3_directory_bucket`.
final class AwsS3DirectoryBucket extends Resource {
  static const String tfType = 'aws_s3_directory_bucket';

  AwsS3DirectoryBucket({
    required super.localName,
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
           if (dataRedundancy != null) 'data_redundancy': dataRedundancy,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
           if (location != null)
             'location': TfArg.literal([for (final e in location) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsS3DirectoryBucketSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');
}
