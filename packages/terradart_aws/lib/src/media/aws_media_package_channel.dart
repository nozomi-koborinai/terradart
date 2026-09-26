// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_media_package_channel`.
const Set<String> _awsMediaPackageChannelSensitive = <String>{};

/// Factory wrapper for `aws_media_package_channel`.
final class AwsMediaPackageChannel extends Resource {
  static const String tfType = 'aws_media_package_channel';

  AwsMediaPackageChannel({
    required super.localName,
    required TfArg<String> channelId,
    TfArg<String>? description,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'channel_id': channelId,
           if (description != null) 'description': description,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsMediaPackageChannelSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `hls_ingest` attribute.
  TfRef<List<Map<String, Object?>>> get hlsIngest =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'hls_ingest');
}
