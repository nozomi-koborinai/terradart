// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ivs_channel`.
const Set<String> _awsIvsChannelSensitive = <String>{};

/// Ivs Channel Latency enum for `latency_mode`.
enum IvsChannelLatencyMode implements TerraformEnum {
  normal('NORMAL'),
  low('LOW');

  const IvsChannelLatencyMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// Ivs Channel enum for `type`.
enum IvsChannelType implements TerraformEnum {
  basic('BASIC'),
  standard('STANDARD'),
  advancedSd('ADVANCED_SD'),
  advancedHd('ADVANCED_HD');

  const IvsChannelType(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ivs_channel`.
final class AwsIvsChannel extends Resource {
  static const String tfType = 'aws_ivs_channel';

  AwsIvsChannel(
    super.localName, {
    TfArg<bool>? authorized,
    TfArg<IvsChannelLatencyMode>? latencyMode,
    TfArg<String>? name,
    TfArg<String>? recordingConfigurationArn,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    TfArg<IvsChannelType>? type,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authorized': ?authorized,
           'latency_mode': ?latencyMode,
           'name': ?name,
           'recording_configuration_arn': ?recordingConfigurationArn,
           'region': ?region,
           'tags': ?tags,
           'type': ?type,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIvsChannelSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsIvsChannel>`.
  RefTo<AwsIvsChannel> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `authorized` attribute.
  TfRef<bool> get authorized => TfRef.attribute<bool>(this, 'authorized');

  /// Reference to `latency_mode` attribute.
  TfRef<String> get latencyMode =>
      TfRef.attribute<String>(this, 'latency_mode');

  /// Reference to `recording_configuration_arn` attribute.
  TfRef<String> get recordingConfigurationArn =>
      TfRef.attribute<String>(this, 'recording_configuration_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');

  /// Reference to `type` attribute.
  TfRef<String> get type => TfRef.attribute<String>(this, 'type');
}
