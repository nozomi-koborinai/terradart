// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

import '../kms/aws_kms_key.dart' show AwsKmsKey;

/// Sensitive field paths for `aws_kinesis_video_stream`.
const Set<String> _awsKinesisVideoStreamSensitive = <String>{};

/// Factory wrapper for `aws_kinesis_video_stream`.
final class AwsKinesisVideoStream extends Resource {
  static const String tfType = 'aws_kinesis_video_stream';

  AwsKinesisVideoStream({
    required super.localName,
    TfArg<num>? dataRetentionInHours,
    TfArg<String>? deviceName,
    RefTo<AwsKmsKey>? kmsKeyId,
    TfArg<String>? mediaType,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (dataRetentionInHours != null)
             'data_retention_in_hours': dataRetentionInHours,
           if (deviceName != null) 'device_name': deviceName,
           if (kmsKeyId != null) 'kms_key_id': kmsKeyId.encodeAs('arn'),
           if (mediaType != null) 'media_type': mediaType,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsKinesisVideoStreamSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsKinesisVideoStream>`.
  RefTo<AwsKinesisVideoStream> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `creation_time` attribute.
  TfRef<String> get creationTime =>
      TfRef.attribute<String>(this, 'creation_time');

  /// Reference to `version` attribute.
  TfRef<String> get version => TfRef.attribute<String>(this, 'version');
}
