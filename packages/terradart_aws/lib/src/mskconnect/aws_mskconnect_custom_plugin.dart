// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

import '../s3/aws_s3_bucket.dart' show AwsS3Bucket;

/// Sensitive field paths for `aws_mskconnect_custom_plugin`.
const Set<String> _awsMskconnectCustomPluginSensitive = <String>{};

/// Mskconnect Custom Plugin Content enum for `content_type`.
enum MskconnectCustomPluginContentType implements TerraformEnum {
  jar('JAR'),
  zip('ZIP');

  const MskconnectCustomPluginContentType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Typed helper for the `location` block of
/// `aws_mskconnect_custom_plugin` (derived from provider schema).
@immutable
final class MskconnectCustomPluginLocation {
  const MskconnectCustomPluginLocation({required this.s3});

  final MskconnectCustomPluginS3 s3;

  Map<String, Object?> encode() => {'s3': s3.encode()};
}

/// Typed helper for the `location.s3` block of
/// `aws_mskconnect_custom_plugin` (derived from provider schema).
@immutable
final class MskconnectCustomPluginS3 {
  const MskconnectCustomPluginS3({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  final RefTo<AwsS3Bucket> bucketArn;

  final TfArg<String> fileKey;

  final TfArg<String>? objectVersion;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.encodeAs('arn').toTfJson(),
    'file_key': fileKey.toTfJson(),
    'object_version': ?objectVersion?.toTfJson(),
  };
}

/// Factory wrapper for `aws_mskconnect_custom_plugin`.
final class AwsMskconnectCustomPlugin extends Resource {
  static const String tfType = 'aws_mskconnect_custom_plugin';

  AwsMskconnectCustomPlugin(
    super.localName, {
    required TfArg<MskconnectCustomPluginContentType> contentType,
    TfArg<String>? description,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    required MskconnectCustomPluginLocation location,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'content_type': contentType,
           'description': ?description,
           'name': name,
           'region': ?region,
           'tags': ?tags,
           'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskconnectCustomPluginSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsMskconnectCustomPlugin>`.
  RefTo<AwsMskconnectCustomPlugin> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');

  /// Reference to `content_type` attribute.
  TfRef<String> get contentType =>
      TfRef.attribute<String>(this, 'content_type');

  /// Reference to `description` attribute.
  TfRef<String> get description => TfRef.attribute<String>(this, 'description');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
