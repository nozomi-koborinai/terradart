// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_mskconnect_custom_plugin`.
const Set<String> _awsMskconnectCustomPluginSensitive = <String>{};

/// Typed helper for the `location` block of
/// `aws_mskconnect_custom_plugin` (derived from provider schema).
@immutable
final class MskconnectCustomPluginLocation {
  const MskconnectCustomPluginLocation({required this.s3});

  final MskconnectCustomPluginLocationS3 s3;

  Map<String, Object?> encode() => {'s3': s3.encode()};
}

/// Typed helper for the `location.s3` block of
/// `aws_mskconnect_custom_plugin` (derived from provider schema).
@immutable
final class MskconnectCustomPluginLocationS3 {
  const MskconnectCustomPluginLocationS3({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  final TfArg<String> bucketArn;

  final TfArg<String> fileKey;

  final TfArg<String>? objectVersion;

  Map<String, Object?> encode() => {
    'bucket_arn': bucketArn.toTfJson(),
    'file_key': fileKey.toTfJson(),
    if (objectVersion != null) 'object_version': objectVersion!.toTfJson(),
  };
}

/// Factory wrapper for `aws_mskconnect_custom_plugin`.
final class AwsMskconnectCustomPlugin extends Resource {
  static const String tfType = 'aws_mskconnect_custom_plugin';

  AwsMskconnectCustomPlugin({
    required super.localName,
    required TfArg<String> contentType,
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
           if (description != null) 'description': description,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           'location': TfArg.literal(location.encode()),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMskconnectCustomPluginSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `latest_revision` attribute.
  TfRef<num> get latestRevision =>
      TfRef.attribute<num>(this, 'latest_revision');

  /// Reference to `state` attribute.
  TfRef<String> get state => TfRef.attribute<String>(this, 'state');
}
