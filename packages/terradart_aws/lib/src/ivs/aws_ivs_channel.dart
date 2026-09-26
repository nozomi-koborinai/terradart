// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ivs_channel`.
const Set<String> _awsIvsChannelSensitive = <String>{};

/// Factory wrapper for `aws_ivs_channel`.
final class AwsIvsChannel extends Resource {
  static const String tfType = 'aws_ivs_channel';

  AwsIvsChannel({
    required super.localName,
    TfArg<bool>? authorized,
    TfArg<String>? latencyMode,
    TfArg<String>? name,
    TfArg<String>? recordingConfigurationArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<String>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (authorized != null) 'authorized': authorized,
           if (latencyMode != null) 'latency_mode': latencyMode,
           if (name != null) 'name': name,
           if (recordingConfigurationArn != null)
             'recording_configuration_arn': recordingConfigurationArn,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (type != null) 'type': type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvsChannelSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `ingest_endpoint` attribute.
  TfRef<String> get ingestEndpoint =>
      TfRef.attribute<String>(this, 'ingest_endpoint');

  /// Reference to `playback_url` attribute.
  TfRef<String> get playbackUrl =>
      TfRef.attribute<String>(this, 'playback_url');
}
